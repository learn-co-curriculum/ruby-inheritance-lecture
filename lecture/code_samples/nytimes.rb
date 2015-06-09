require 'rest-client'
require 'json'
require_relative 'scraper'

class Nytimes < Scraper

  def initialize(list = "e-book-fiction", api_key = "6affba013a80b40eec17d5298cb9f3c4:10:54741243")
    @api_key = api_key
    @list = list
    @base_url = "http://api.nytimes.com/svc/books/v2/lists"
  end

  private
    def parse_structure
      self.response["results"]
    end

    def construct_url
      "#{@base_url}/#{@list}.json?&api-key=#{@api_key}"
    end
end