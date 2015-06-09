class RedditLink
  attr_reader :url, :title, :source
  def initialize(url, title, source)
    @url = url
    @title = title
    @source = source
  end

  def to_s
    "#{title}: #{url} at #{source}"
  end

  def to_html
     %{<section>
        <header>
          <a href="http://reddit.com/#{source}">
            #{title}
          </a>
        </header> 
        <img src="#{url}" />
      </section>
  }
  end
end