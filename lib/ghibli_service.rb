require "httparty"

class GhibliService
  def films
    get_url("https://limitless-castle-00011.herokuapp.com/films")
  end

  def get_url(url)
    response = HTTParty.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end