require_relative 'reddit'
require_relative 'reddit_link'
require_relative 'scraper'

# reddit = Reddit.new(subreddit: 'reactiongifs')
reddit = Reddit.new(subreddit: 'cinemagraphs')
links = reddit.get_links do |link|
  RedditLink.new(link["data"]["url"], link["data"]["title"], link["data"]["permalink"])
end

links.each do |link|
  puts link.to_html
end