class ScoreCalculation
  def self.update_score(award_name, metric_class, metric, metric_col, normalized_col, options={})
    log = Logger.new(STDOUT)
    
    max_vote_start = options[:vote_start] ||= metric_class.maximum("vote_start")
    latest_nominations = metric_class.where("vote_start='#{max_vote_start}'")
    ranking = latest_nominations.order(metric_col).pluck("distinct #{metric_col}")
    max_rank = ranking.length
    metric_weightage = Award.find_by("name = '#{award_name}'").judging_criteria["#{metric}"].to_f

    latest_nominations.each do |nominee|
      log.info( "Calculating aggregate score for #{nominee.artiste}...")

      if ranking[0] == 0
        score = ((ranking.index(nominee["#{metric_col}"])) * 1.0 / (max_rank - 1) * metric_weightage).round(2)
      else
        score = ((ranking.index(nominee["#{metric_col}"]) + 1) * 1.0 / max_rank * metric_weightage).round(2)
      end

      instance = Nomination.find_by(vote_start: nominee["vote_start"], 
                                    vote_end: nominee["vote_end"], 
                                    artiste: nominee["artiste"], 
                                    song: nominee["song"]
                                   )
      if instance
        instance.update(
          "#{metric}": nominee["#{metric_col}"],
          "#{normalized_col}": score
          )
      else 
        Nomination.create(
          award: nominee["award"],
          vote_start: nominee["vote_start"],
          vote_end: nominee["vote_end"],
          artiste: nominee["artiste"],
          song: nominee["song"],
          "#{metric}": nominee["#{metric_col}"],
          "#{normalized_col}": score
          )
      end
    end    
  end

  def self.update_digital_sales(award_name, metric_class, options={})
    log = Logger.new(STDOUT)

    max_vote_start = options[:vote_start] ||= metric_class.maximum("vote_start")
    latest_nominations = metric_class.where("vote_start='#{max_vote_start}'")
    metric_weightage = Award.find_by("name = '#{award_name}'").judging_criteria["digital_sales"].to_f

    dc_ranking = latest_nominations.order("download_count").pluck("distinct download_count")
    sc_ranking = latest_nominations.order("streaming_count").pluck("distinct streaming_count")
    ds = Array.new
      
    latest_nominations.each do |nominee|
      log.info( "Calculating combined digital sales rank for #{nominee.artiste}...")
      if dc_ranking[0] == 0
        dc_rank = dc_ranking.index(nominee["download_count"])
      else 
        dc_rank = dc_ranking.index(nominee["download_count"]) + 1
      end

      if sc_ranking[0] == 0
        sc_rank = sc_ranking.index(nominee["streaming_count"])
      else
        sc_rank = sc_ranking.index(nominee["streaming_count"]) + 1
      end

      combined_rank = dc_rank + sc_rank

      ds.push({
        award: award_name,
        vote_start: nominee["vote_start"],
        vote_end: nominee["vote_end"], 
        artiste: nominee["artiste"], 
        song: nominee["song"],
        dc_rank: dc_rank,
        sc_rank: sc_rank,
        combined_rank: combined_rank
        })
    end

    combined_ranking = ds.sort { |a,b| a[:combined_rank] <=> b[:combined_rank] }
    max_combined_ranking = ds.max_by{|e| e[:dc_rank]}[:dc_rank] + ds.max_by{|e| e[:sc_rank]}[:sc_rank]

    ds.each do |nominee|
      # log.info( "Calculating combined normalized digital sales for #{nominee[:artiste]}...")
      score = ((nominee[:combined_rank] * 1.0 / max_combined_ranking) * metric_weightage).round(2)

      instance = Nomination.find_by(vote_start: nominee[:vote_start], 
                                    vote_end: nominee[:vote_end], 
                                    artiste: nominee[:artiste], 
                                    song: nominee[:song]
                                   )
      if instance
        instance.update(
          normalized_ds: score
          )
      else 
        Nomination.create(
          award: nominee[:award],
          vote_start: nominee[:vote_start], 
          vote_end: nominee[:vote_end], 
          artiste: nominee[:artiste], 
          song: nominee[:song],
          normalized_ds: score
          )
      end
    end
  end

  def self.update_ranking
    nomination = Nomination.where("vote_start='2016-11-11'")
    nomination.each do |n|
      aggregate_score = (n.normalized_ds + n.normalized_pv + n.normalized_yv).round(2)
      normalized_remainder = (100.0 - aggregate_score).round(2)
      n.update(
        normalized_remainder: normalized_remainder,
        aggregate_score: aggregate_score
        )
    end
    nomination_ranking = Array.new
    nomination.sort { |a,b| a["aggregate_score"] <=> b["aggregate_score"] }.reverse.each do |n|
      nomination_ranking.push(n.aggregate_score)
    end

    nomination.each do |n|
      ranking = nomination_ranking.uniq.index(n["aggregate_score"]) + 1
      n.update(
        ranking: ranking
        )
    end
  end

end