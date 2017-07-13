require 'rubygems'
require 'nokogiri'   
require 'open-uri'

=begin
PAGE_URL = "http://ruby.bastardsbook.com/files/hello-webpage.html"
   
page = Nokogiri::HTML(open(PAGE_URL))   

page.css('li a').each do |el|
   puts el.text
end
=end

PAGE_URL = "https://en.wikipedia.org/wiki/HTML"
   
page = Nokogiri::HTML(open(PAGE_URL))   

page.xpath('//div[1]/table[1]/tr/th').each do |node|
  puts node.text
end


#//*[@id="mw-content-text"]/div/table[1]/tbody/tr[2]/th/a