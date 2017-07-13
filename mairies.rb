require 'rubygems'
require 'nokogiri'   
require 'open-uri'

#	Ecris une méthode get_the_email_of_a_townhal_from_its_webpage qui, comme son nom l'indique, 
#	récupère l'adresse email à partir de l'url d'une mairie, par exemple celle de Vauréal
	
def get_the_email_of_a_townhall_from_its_webpage(url)

	page = Nokogiri::HTML(open(url))
	scrap = page.xpath('//html/body/table/tr[3]/td/table/tr[1]/td[1]/table[4]/tr[2]/td/table/tr[4]/td[2]/p')
	scrap.each do |x| return x.text end
end



#	Ecris une méthode get_all_the_urls_of_val_doise_townhalls qui, 
#	comme son nom l'indique, récupère toutes les url de villes du Val d'Oise. 

def get_all_the_urls_of_val_doise_townhalls(url)
	h = {}
	page = Nokogiri::HTML(open(url))
	scrap = page.xpath('//table/tr[2]/td/table/tr/td/p/a')
	scrap.each do |link| 
		k = link.text.split.each do |s| s.capitalize! end
		k = k * "-"
		url = 'http://annuaire-des-mairies.com' + link['href'].slice!(1..-1)
		v = get_the_email_of_a_townhall_from_its_webpage(url)
		h.store(k, v)
	end
	puts h
end

get_all_the_urls_of_val_doise_townhalls("http://annuaire-des-mairies.com/val-d-oise.html")
