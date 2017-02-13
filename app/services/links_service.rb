class LinksService

  def initialize
    @conn = Faraday.new(url: 'https://afternoon-chamber-82002.herokuapp.com/')
  end

  def get_links
    response = @conn.get '/api/v1/links'
    JSON.parse(response.body, symbolize_names: true)
  end

end
