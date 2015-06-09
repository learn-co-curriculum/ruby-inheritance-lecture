require 'rest-client'
require 'json'
require_relative 'scraper'

class Reddit < Scraper

  def initialize(subreddit: 'all')
    @subreddit = subreddit
    @base_url = 'http://www.reddit.com/r'
  end

private
  def parse_structure
    self.response["data"]["children"]
  end

  def construct_url
    "#{@base_url}/#{@subreddit}.json"
  end

end