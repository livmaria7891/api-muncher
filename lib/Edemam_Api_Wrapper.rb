require 'httparty'

class EdemamApiWrapper
  BASE_URL = 'https://api.edamam.com/'
  APP_ID = ENV['APP_ID']
  APP_KEY = ENV['APP_KEY']

  def self.listrecipes(query)
    @q = query
    url = BASE_URL + "search?q=" + @q + "&app_id=" + APP_ID + "&app_key=" + APP_KEY

    data = HTTParty.get(url)

    recipes = []
    if data["hits"]
      data["hits"].each do |hits|
        wrapper = Recipe.new hits["recipe"]["label"],hits["recipe"]["uri"],hits["recipe"]["url"],hits["recipe"]["image"],hits["recipe"]["ingredientLines"],hits["recipe"]["dietLabels"],hits["recipe"]["healthLabels"]
        recipes << wrapper
      end
    end
    return recipes
  end

  def self.findrecipe(recipe_uri)

    url = BASE_URL + "search?&app_id=" + APP_ID + "&app_key=" + APP_KEY + "&r=#{URI.encode(recipe_uri)}"

    data = HTTParty.get(url)
    recipe = Recipe.new data[0]["label"],data[0]["uri"],data[0]["url"],data[0]["image"],data[0]["ingredientLines"],data[0]["dietLabels"],data[0]["healthLabels"]

    return recipe
   end


end
