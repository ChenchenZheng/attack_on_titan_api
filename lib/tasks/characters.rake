require 'json'
require 'open-uri'

namespace :characters do
  task import_infos: :environment do
    url = 'https://attackontitan.fandom.com/wiki/List_of_characters/Anime'
    html_file = URI.open(url).read
    html_doc = Nokogiri::HTML(html_file)
    names = html_doc.search('.WikiaMainContent .characterbox-main .characterbox td a')
    ActiveRecord::Base.transaction do
      names.each do |element|
        url = "https://attackontitan.fandom.com/#{element.attributes['href'].value}"
        html_file = URI.open(url).read
        html_doc = Nokogiri::HTML(html_file)
        card = html_doc.search('.portable-infobox.pi-background.pi-theme-wikia.pi-layout-default')
        name = card.search('.pi-item.pi-item-spacing.pi-title').text.strip
        puts "Start #{name} import"
        first_name = name.split.first
        last_name = name.split.last
        alia = card.search('.pi-data-value.pi-font')[1].text.scan(/".+"/).first&.tr('"', '')
        species = card.search('.pi-data-value.pi-font')[2].text
        age = card.search('.pi-data-value.pi-font')[4].text.scan(/\d+/).first
        height = card.search('.pi-data-value.pi-font')[5].text
        residence = card.search('.pi-data-value.pi-font')[10]&.text
        status = card.search('.pi-data-value.pi-font')[11]&.text
        Character.create!(first_name: first_name, last_name: last_name, species: species, age: age, height: height, residence: residence, status: status, alias: alia)
        puts "#{name} imported succesfully !"
        puts "===="
      end
    end
    puts "#{Character.all.count} characters imported !"
  end
end
