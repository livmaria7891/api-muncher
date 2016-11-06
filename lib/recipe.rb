class Recipe

  attr_reader :name, :uri, :original_url, :photo_url, :ingredients, :diet_labels, :health_labels

  def initialize(name, uri, original_url, photo_url, ingredients, diet_labels, health_labels)
    if name == nil || uri ==nil || original_url == nil || photo_url == nil || ingredients == nil || diet_labels == nil || health_labels == nil || name == "" || uri == "" || original_url == "" || photo_url == "" || ingredients == "" || diet_labels == "" || health_labels == ""
      raise ArgumentError
    end
    
    @name = name
    @uri = uri
    @original_url = original_url
    @photo_url = photo_url
    @ingredients = ingredients
    @diet_labels = diet_labels
    @health_labels = health_labels

  end

end
