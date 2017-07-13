require 'rubygems'
require 'nokogiri'   
require 'open-uri'

=begin
	
rescue Exception => e
	
end

page = Nokogiri::HTML(open('http://www.ebg.net/'))
scrap = page.xpath('//div[3]/div[1]/div[3]/div[3]')
scrap.each do |node| puts node.text end


=end

Dir.foreach("http://www.ebg.net/photos") do |fichier|
  fichier
end