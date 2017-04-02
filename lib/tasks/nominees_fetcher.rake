load './lib/imports/nominees_fetcher.rb'

namespace :nominees_fetcher do

  desc "Update Mcountdown nominees and popularity votes"
  task mcountdown: :environment do
    NomineesFetcher.mcountdown_nominees_and_votes
  end
end