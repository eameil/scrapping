require 'rubygems'
require 'nokogiri'   
require 'open-uri'


=begin
	
rescue Exception => e
	
end
page = Nokogiri::HTML(open('https://coinmarketcap.com'))
scrap = page.css ('td[2] img.currency-logo')
scrap.each do |node| puts node['alt'] end

page = Nokogiri::HTML(open('https://coinmarketcap.com'))
scrap = page.css('html body table tr[3] .currency-name')
scrap.each do |node| puts node.text end

page = Nokogiri::HTML(open('https://coinmarketcap.com'))
scrap = page.css('tr[3]' && ('.currency-name' || '.price'))
scrap.each do |node| puts node.content end

=end

def essai

page = Nokogiri::HTML(open('https://coinmarketcap.com'))
result = page.css('tbody tr').each do |tr|
  id = tr.css("currency-name").text
  price = tr.css("price").text 
  puts id + "vaut aujourd'hui" + price
end
end


essai
	

=begin

doc = Nokogiri::HTML(html)
result = doc.css('div.insurancesAccepted > ul > li').each do |li|
  chapter = li.css('span').text.strip
  section = li.css('a').text.strip
  subsections = li.css('ul > li').map(&:text).map(&:strip)

  puts "#{chapter} ⇒ [ #{section} ⇒ [ #{subsections.join(', ')} ] ]"
  puts '=' * 40
end

=end
