require "open-uri"
require "csv"
require "json"
require "typhoeus"
require "nokogiri"
require "active_record"
require "postgres-copy"
require "pg"
require "pry"

class ScoreCalculation

  def self.update_normalized_ranking(award_id, metric_class, metric_ranking_class, metric, normalized_metric)
    time_now = Time.now.in_time_zone("Seoul")
    formatted_time_now = time_now.strftime("%Y-%m-%d")

    ongoing_cycle_ids = NominationCycle.where('start_date <= ? AND end_date >= ?', time_now, time_now)
    ongoing_cycle_ids.each do |c|
      nominees = metric_class.joins("INNER JOIN nominees ON nominees.artiste_id = #{metric}.artiste_id AND nominees.song_id = #{metric}.song_id")
                               .where(date_d: metric_class.select('MAX(date_d)'))
                               .where("nominees.cycle_id = #{c.id}")
                               .select("nominees.id AS nominee_id, #{metric}.*")

      ranking = nominees.sort_by {|r| r["#{metric}"]}.pluck("#{metric}").uniq
      max_rank = ranking.length
      min_value = ranking.min
      metric_weightage = Award.find(award_id).judging_criteria["#{metric}"].to_f

      nominees.each do |n|
        if min_value == 0
          normalized_score = ((ranking.index(n["#{metric}"])) * 1.0 / (max_rank - 1) * metric_weightage).round(2)
        else
          normalized_score = ((ranking.index(n["#{metric}"]) + 1) * 1.0 / max_rank * metric_weightage).round(2)
        end

        instance = metric_ranking_class.find_by(:nominee_id => n["nominee_id"])
  
        if instance
          instance.update(
            "#{metric}": n["#{metric}"],
            "#{normalized_metric}": normalized_score
            )
        else 
          metric_ranking_class.create(
            nominee_id: n["nominee_id"],
            "#{metric}": n["#{metric}"],
            "#{normalized_metric}": normalized_score
            )
        end
      end
    end
  end

  def self.update_digital_sales(award_id, metric_ranking_class)
    time_now = Time.now.in_time_zone("Seoul")
    formatted_time_now = time_now.strftime("%Y-%m-%d")

    ongoing_cycle_ids = NominationCycle.where('start_date <= ? AND end_date >= ?', time_now, time_now)
    ongoing_cycle_ids.each do |c|
      nominees = DigitalSale.joins("INNER JOIN nominees ON nominees.artiste_id = digital_sales.artiste_id AND nominees.song_id = digital_sales.song_id")
                               .where(date_d: DigitalSale.select('MAX(date_d)'))
                               .where("nominees.cycle_id = #{c.id}")
                               .select("nominees.id AS nominee_id, digital_sales.*")
      
      dc_ranking = nominees.sort_by {|r| r["download_cnt"]}.pluck("download_cnt").uniq
      sc_ranking = nominees.sort_by {|r| r["stream_cnt"]}.pluck("stream_cnt").uniq
      ds = Array.new
      metric_weightage = Award.find(award_id).judging_criteria["digital_sales"].to_f
      
      nominees.each do |n|
        if dc_ranking[0] == 0
          dc_rank = dc_ranking.index(n["download_cnt"])
        else 
          dc_rank = dc_ranking.index(n["download_cnt"]) + 1
        end

        if sc_ranking[0] == 0
          sc_rank = sc_ranking.index(n["stream_cnt"])
        else
          sc_rank = sc_ranking.index(n["stream_cnt"]) + 1
        end

        combined_rank = dc_rank + sc_rank

        ds.push({
          nominee_id: n["nominee_id"],
          artiste: n["artiste_id"], 
          song: n["song_id"],
          download_cnt: n["download_cnt"],
          stream_cnt: n["stream_cnt"],
          dc_rank: dc_rank,
          sc_rank: sc_rank,
          combined_rank: combined_rank
          })
      end

      combined_ranking = ds.sort { |a,b| a[:combined_rank] <=> b[:combined_rank] }
      max_combined_ranking = ds.max_by{|e| e[:dc_rank]}[:dc_rank] + ds.max_by{|e| e[:sc_rank]}[:sc_rank]

      ds.each do |n|
        normalized_score = ((n[:combined_rank] * 1.0 / max_combined_ranking) * metric_weightage).round(2)
        instance = metric_ranking_class.find_by(:nominee_id => n[:nominee_id])

        if instance
          instance.update(
            download_cnt: n[:download_cnt],
            stream_cnt: n[:stream_cnt],
            normalized_ds: normalized_score
            )
        else 
          metric_ranking_class.create(
            nominee_id: n[:nominee_id],
            download_cnt: n[:download_cnt],
            stream_cnt: n[:stream_cnt],
            normalized_ds: normalized_score
            )
        end
      end
    end
  end

  def self.update_aggregate_ranking(award_id, metric_ranking_class)
    time_now = Time.now.in_time_zone("Seoul")
    formatted_time_now = time_now.strftime("%Y-%m-%d")

    ongoing_cycle_ids = NominationCycle.where('start_date <= ? AND end_date >= ?', time_now, time_now)
    ongoing_cycle_ids.each do |c|
      nominations = metric_ranking_class.joins("INNER JOIN nominees ON nominees.id = mcountdown_rankings.nominee_id")
                                       .where("nominees.cycle_id = #{c.id}")
      contributing_metrics = metric_ranking_class.column_names.grep(/normalized/)
      nominations.each do |n|
        score = 0
        contributing_metrics.each do |m|
          score += n["#{m}"]
        end
        score = score.round(2)
        remainder = (100.0 - score).round(2)
        n.update(
          remainder: remainder,
          score: score
          )
      end
      nomination_ranking = Array.new
      nominations.sort { |a,b| a["score"] <=> b["score"] }.reverse.each do |n|
        nomination_ranking.push(n.score)
      end

      nominations.each do |n|
        ranking = nomination_ranking.uniq.index(n["score"]) + 1
        n.update(
          ranking: ranking
          )
      end
    end
  end

end