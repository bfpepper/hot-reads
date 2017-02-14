class LinksService

  def initialize
    @conn = Faraday.new(url: 'http://localhost:3001')
  end

  def get_links
    response = @conn.get '/api/v1/links'
    JSON.parse(response.body, symbolize_names: true)
  end

end
