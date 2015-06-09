require 'pry'
class Scraper
  attr_accessor :response

  # def yield_links

  # end

  def parse
    JSON.parse(response)
  end

  def get_links
    # invisible block sitting in this method
    # we call yield, we'll "call" that block
    # do |book|
    #   book["book_details"].first["book_image"]
    # end
    response = RestClient.get(construct_url)
    self.response = parse
    parse_structure.map do |link|
      yield link
    end
  end

end
