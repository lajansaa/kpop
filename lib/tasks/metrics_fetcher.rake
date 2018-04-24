load './lib/imports/metrics_fetcher.rb'

namespace :metrics_fetcher do

  desc "Update youtube views"
  task youtube_views: :environment do
    MetricsFetcher.youtube_views
  end

  desc "Update digital sales"
  task digital_sales: :environment do
    MetricsFetcher.digital_sales
  end

  desc "Get digital service provider links"
  task get_links: :environment do
    MetricsFetcher.get_links
  end
end