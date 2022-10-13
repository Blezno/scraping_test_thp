require 'open-uri'
require 'nokogiri'

page = Nokogiri::HTML(URI.open(''))

