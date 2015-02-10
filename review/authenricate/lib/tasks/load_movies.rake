namespace :authenricate do

  desc "Load movies"
  task :load => :environment do

    require 'mechanize'

    a = Mechanize.new
    a.get("http://www.imdb.com/chart/top") do |page|

      titles = page.search("td.titleColumn a")
      titles.each do |title|
        Movie.create title: title.text
      end

    end


  end
end
