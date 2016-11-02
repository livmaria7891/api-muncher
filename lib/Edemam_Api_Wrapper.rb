require 'httparty'

class EdemamApiWrapper
  BASE_URL = 'https://api.edamam.com/'
  APP_ID = ENV['APP_ID']
  APP_KEY = ENV['APP_KEY']

  def self.listrecipes
    @q = "chicken"
    url = BASE_URL + "search?q=" + @q + "&app_id=" + APP_ID + "&app_key=" + APP_KEY

    data = HTTParty.get(url)

    recipes = []
    if data["hits"]
      data["hits"].each do |hits|
        wrapper = Recipe.new hits["recipe"]["label"],hits["recipe"]["url"],hits["recipe"]["image"],hits["recipe"]["ingredientLines"],hits["recipe"]["dietLabels"],hits["recipe"]["healthLabels"]
        recipes << wrapper
      end
    end
    return recipes[0]
  end


end
