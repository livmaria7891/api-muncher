class Recipe

  attr_reader :name
  def initialize(name, original_url, photo_url, ingredients, diet_labels, health_labels)
    @name = name
    @original_url = original_url
    @photo_url = photo_url
    @diet_labels = diet_labels
    @health_labels = health_labels
  end

end
