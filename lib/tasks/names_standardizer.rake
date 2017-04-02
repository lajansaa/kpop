load './lib/imports/names_standardizer.rb'

namespace :names_standardizer do

  desc "Standardize artiste english names"
  task artiste_eng_name: :environment do
    NamesStandardizer.mcountdown_eng_name(Artiste)
  end

  desc "Standardize song english names"
  task song_eng_name: :environment do
    NamesStandardizer.mcountdown_eng_name(Song)
  end

  desc "Standardize artiste korean names"
  task artiste_kor_name: :environment do
    NamesStandardizer.artiste_kor_name_mnet
    NamesStandardizer.artiste_kor_name_kpop_scene
  end
end