require_relative '../../lib/imports/nominees_fetcher.rb'

class FetcherWorker
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform()
    puts "Sidekiq worker fetching mcountdown nominees and votes"
    NomineesFetcher.test_method
  end

end