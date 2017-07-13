require 'rubygems'
require 'nokogiri'   
require 'open-uri'


=begin
	Tout d'abord, écris une méthode get_the_email_of_a_townhal_from_its_webpage qui, comme son nom l'indique, 
	récupère l'adresse email à partir de l'url d'une mairie, par exemple celle de Vauréal
	

def get_the_email_of_a_townhal_from_its_webpage(url)

	page = Nokogiri::HTML(open(url))   

	page.xpath('//html/body/table/tr[3]/td/table/tr[1]/td[1]/table[4]/tr[2]/td/table/tr[4]/td[2]/p').each do |node|
	  puts node.text
	end

end

get_the_email_of_a_townhal_from_its_webpage("http://annuaire-des-mairies.com/49/angers.html")

=end

def get_all_the_urls_of_val_doise_townhalls(url_dpt)

	page = Nokogiri::HTML(open(url_dpt))   
	scrap = page.xpath('//table/tr[2]/td/table/tr/td/p/a')
	scrap.each do|link| puts "annuaire-des-mairies.com" + link["href"].slice(1..1000)
	end

end

get_all_the_urls_of_val_doise_townhalls("http://annuaire-des-mairies.com/val-d-oise.html")
