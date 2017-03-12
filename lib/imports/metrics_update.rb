class MetricsUpdate

  def self.popularity_votes
    update_metrics('./lib/imports/popularity_votes.csv', PopularityVote) { |instance, csv_row|
      instance.update(
        votes: csv_row["votes"],
        updated_at: csv_row["updated_at"]
      )
    }
  end

  def self.update_youtube_views
    youtube_views_fetcher
    update_metrics('./lib/imports/youtube_views.csv', YoutubeView) { |instance, csv_row|
      instance.update(
        views: csv_row["views"],
        updated_at: csv_row["updated_at"]
      )
    }
  end

  private

  def self.update_metrics(file_name, class_type)
    CSV.foreach(file_name, headers: true) do |row|
      instance = class_type.find_by(vote_start: row["vote_start"], 
                                    vote_end: row["vote_end"], 
                                    artiste: row["artiste"], 
                                    song: row["song"])
      if instance
        yield instance, row
      else
        class_type.create(row.to_h)
      end
    end
  end
end