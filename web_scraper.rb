require 'open-uri'
require 'nokogiri'

class NumberScraper
  attr_reader :number_url, :number_doc

  def initialize
    @number_url = "http://www2.stetson.edu/~efriedma/numbers.html"
    @number_doc = Nokogiri::HTML(open(@flatiron_url).read)
  end

end