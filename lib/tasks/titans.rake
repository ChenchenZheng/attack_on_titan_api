require 'json'
require 'open-uri'

namespace :titans do
  task import_infos: :environment do
    url = "https://attackontitan.fandom.com/wiki/Nine_Titans_(Anime)"
    html_file = URI.open(url).read
    html_doc = Nokogiri::HTML(html_file)
    links = html_doc.search('li b a')
    ActiveRecord::Base.transaction do
      links.each do |link|
        url = "https://attackontitan.fandom.com/#{link.attributes['href'].value}"
        html_file = URI.open(url).read
        html_doc = Nokogiri::HTML(html_file)
        card = html_doc.search('.portable-infobox.pi-background.pi-theme-wikia.pi-layout-default')
        name = card.search('.pi-item.pi-item-spacing.pi-title').text.strip
        puts "Start #{name} import"
        other_names = card.search('.pi-data-value.pi-font')[1].text.strip
        allegiance = card.search('.pi-data-value.pi-font')[-4].text.strip
        Titan.create!(name: name, other_names: other_names, allegiance: allegiance)
        puts "#{name} imported succesfully !"
        puts "===="
      end
    end
    puts "#{Titan.all.count} characters imported !"
  end
end
