class Links

  def initialize(link)
    @url = link[:url]
    @title = link[:title]
  end

  def self.all
    links = LinksService.new.get_links
    links.map do |link|
      Link.new(link)
  end

end
