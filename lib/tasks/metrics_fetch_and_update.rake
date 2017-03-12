load './lib/imports/metrics_fetcher.rb'
load './lib/imports/metrics_update.rb'

namespace :metrics_fetch_and_update do

  desc "Update Mcountdown nominees and popularity votes"
  task popularity_vote: :environment do
    MetricsFetcher.popularity_votes
    puts "Fetch OK"
    MetricsUpdate.popularity_votes
    puts "Update OK"
  end

  desc "Update YouTube views"
  task youtube_view: :environment do
    MetricsFetcher.youtube_views
    puts "Fetch OK"
    MetricsUpdate.youtube_views
    puts "Update OK"
  end
end