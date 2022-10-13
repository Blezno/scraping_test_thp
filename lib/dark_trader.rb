require 'open-uri'
require 'nokogiri'

page = Nokogiri::HTML(URI.open('https://coinmarketcap.com/all/views/all/'))

def name(link)
    bourse = []

    link.xpath('//*/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr[*]/td[2]/div/a[2]').each do |i|
        bourse.push(i.text) 
    end
    
    return bourse
end

def value(link)
    price = []

    link.xpath('//*/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr[*]/td[5]/div/a').each do |j|
        price.push(j.text)
    end
        
    return price 
end

def final(link)
    final_crypto = name(link)
    final_value = value(link)

    final = final_crypto.zip(final_value).to_h
    final
end

puts final(page)


#le .zip .. to_h permets de combiner deux array en un hash. 

#l'étoile va chercher tout le contenu jusqu'à la div. Sinon copier le xpath complet.





