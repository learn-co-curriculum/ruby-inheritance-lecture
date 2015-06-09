require_relative 'nytimes'
require_relative 'scraper'
require 'pp'

# reddit = Reddit.new(subreddit: 'reactiongifs')
nytimes = Nytimes.new
links = nytimes.get_links do |book|
  book["book_details"].first["book_image"]
end

pp links