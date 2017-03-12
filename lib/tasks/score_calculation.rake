load './lib/imports/score_calculation.rb'

namespace :score_calculation do

  desc "Calculate normalized popularity votes for nominees"
  task pv: :environment do
    award_name = ENV["AWARD_NAME"] ||= 'MCOUNTDOWN'
    ScoreCalculation.update_score(award_name, PopularityVote, 'popularity_votes', 'votes', 'normalized_pv', vote_start: '2016-11-11' )
  end

  desc "Calculate normalized youtube views for nominees"
  task yv: :environment do
    award_name = ENV["AWARD_NAME"] ||= 'MCOUNTDOWN'
    ScoreCalculation.update_score(award_name, YoutubeView, 'youtube_views', 'views', 'normalized_yv', vote_start: '2016-11-11' )
  end

  desc "Calculate normalized digital sales for nominees"
  task ds: :environment do
    award_name = ENV["AWARD_NAME"] ||= 'MCOUNTDOWN'
    ScoreCalculation.update_digital_sales(award_name, DigitalSale, vote_start: '2016-11-11')
  end

  desc "Calculate ranking for nominees"
  task ranking: :environment do
    ScoreCalculation.update_ranking
  end

end

