require_relative 'csv_fetcher'
require_relative '../../app/models/popularity_vote'

    CsvFetcher.popularity_votes_fetcher
    csv_start_date = CSV.read('./lib/imports/popularity_votes.csv').last[1]
    binding.pry

    CSV.foreach("path", headers: true) do |row|
      scraped_name = row["Name"]

      vote = PopularityVote.find_by(name: scraped_name)

      vote.update(score: row["Score"]) if vote && vote.updated_at > Time.parse(row["Date"])
    end

    Nomination.all.each do |nomination|
      nomination.popularity_vote.score
      ...
      nomination.update(score: final_score)
    end


    PopularityVote.connection.execute("delete from popularity_votes where vote_start_date = #{csv_start_date}")
    if PopularityVote.vote_start_date == csv_start_date
      conn.exec("DELETE FROM PopularityVote WHERE vote_start_date = csv_start_date")
    end

    # conn.exec("PopularityVote.copy_from "/Users/Isa/Desktop/alphacamp/final_project/ollida/lib/imports/popularity_votes.csv")