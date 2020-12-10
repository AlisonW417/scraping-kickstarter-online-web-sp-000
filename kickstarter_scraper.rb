require 'nokogiri'
require 'pry'
# require libraries/modules here

def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  binding.pry
end

create_project_hash

# projects: kickstarter.css("li.project.grid_4")
# title: project.css("h2.bbcard_name strong a").text 
# image link: project.css("div.project-thumbnail a img").attribute("src").value
# description: project.css("p.bbcard_blurb").text
# location: project.css(".location-name").text
# percent funded: project.css("ul.project-stats li.first.funded strong").text