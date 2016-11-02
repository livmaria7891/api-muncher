class Recipe

  attr_reader :name, :uri, :original_url, :photo_url, :ingredients, :diet_labels, :health_labels

  def initialize(name, uri, original_url, photo_url, ingredients, diet_labels, health_labels)
    @name = name
    @uri = uri
    @original_url = original_url
    @photo_url = photo_url
    @ingredients = ingredients
    @diet_labels = diet_labels
    @health_labels = health_labels

  end

end
