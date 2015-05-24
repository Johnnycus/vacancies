require 'open-uri'
require 'nokogiri'

class KrgController < ApplicationController

  def index
    url = "http://kar.olx.kz/rabota/"
    
    data = Nokogiri::HTML(open(url))

    @vacancies = data.css('.offer')
  end
  
  def hunting
    url = "http://hh.ru/search/vacancy?no_magic=true&items_on_page=500&enable_snippets=true&search_period=30&clusters=true&area=177&from=cluster_area"
    
    data = Nokogiri::HTML(open(url))

    @hunter = data.css('.search-result-item')
  end
end