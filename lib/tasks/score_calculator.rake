load './lib/imports/score_calculation.rb'

namespace :score_calculator do

  desc "Calculate Mcountdown Votes"
  task mcountdown_votes: :environment do
    ScoreCalculation.update_normalized_ranking(1, McountdownVote, McountdownRanking, 'mcountdown_votes', 'normalized_mv')
  end

  desc "Calculate Mcountdown Youtube Views"
  task youtube_views: :environment do
    ScoreCalculation.update_normalized_ranking(1, YoutubeView, McountdownRanking, 'youtube_views', 'normalized_yv')
  end

  desc "Calculate Mcountdown Digital Sales"
  task digital_sales: :environment do
    ScoreCalculation.update_digital_sales(1, McountdownRanking)
  end

  desc "Calculate Mcountdown Ranking"
  task ranking: :environment do
    ScoreCalculation.update_aggregate_ranking(1, McountdownRanking)
  end
end