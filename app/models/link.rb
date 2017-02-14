class Link
  attr_reader :title, :url, :id, :read

  def initialize(link)
    @url = link[:url]
    @title = link[:title]
    @id = link[:id]
    @read = link[:read]
  end

  def self.all
    links = LinksService.new.get_links
    links.map do |link|
      Link.new(link)
    end
  end

end
