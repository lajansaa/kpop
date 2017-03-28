load './lib/imports/metrics_fetcher.rb'

namespace :metrics_fetcher do

  desc "Update youtube metrics"
  task youtube_metrics: :environment do
    MetricsFetcher.youtube_views
  end
end