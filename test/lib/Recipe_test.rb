require 'test_helper'
require 'recipe'

class RecipeTest < ActionController::TestCase
  test "the truth" do
   assert true
  end

  test "Can create new instance of Recipe" do
    a_test = Recipe.new("name", "uri", "original_url", "photo_url", "ingredients", "diet_labels", "health_labels")
    assert a_test.class == Recipe
  end

  test "raises ArgumentError if any parameters are missing" do
    assert_raises ArgumentError do
      Recipe.new()
    end

    assert_raises ArgumentError do
      Recipe.new("name", "uri")
    end

    assert_raises ArgumentError do
      Recipe.new(nil,nil,nil,nil,nil,nil,nil)
    end

    assert_raises ArgumentError do
      Recipe.new("name","uri","original_url","photo_url","ingredients","diet_labels",nil)
    end

    assert_raises ArgumentError do
      Recipe.new("","","","","","","")
    end

    assert_raises ArgumentError do
      Recipe.new(nil,"uri","original_url","","ingredients","diet_labels",nil)
    end
  end

  test "name variable is set correctly" do
    a_test = Recipe.new("name", "uri", "original_url", "photo_url", "ingredients", "diet_labels", "health_labels")
    assert a_test.name == "name"
    refute a_test.name == "not_name"
  end

  test "uri variable is set correctly" do
    a_test = Recipe.new("name", "uri", "original_url", "photo_url", "ingredients", "diet_labels", "health_labels")

    assert a_test.uri == "uri"
    refute a_test.uri == "not_uri"
  end

  test "original_url variable is set correctly" do
    a_test = Recipe.new("name", "uri", "original_url", "photo_url", "ingredients", "diet_labels", "health_labels")
    assert a_test.original_url == "original_url"
    refute a_test.original_url == "not_original_url"
  end

  test "photo_url variable is set correctly" do
    a_test = Recipe.new("name", "uri", "original_url", "photo_url", "ingredients", "diet_labels", "health_labels")
    assert a_test.photo_url == "photo_url"
    refute a_test.photo_url == "not_photo_url"
  end

  test "ingredients variable is set correctly" do
    a_test = Recipe.new("name", "uri", "original_url", "photo_url", "ingredients", "diet_labels", "health_labels")
    assert a_test.ingredients == "ingredients"
    refute a_test.ingredients == "not_ingredients"
  end

  test "diet_labels variable is set correctly" do
    a_test = Recipe.new("name", "uri", "original_url", "photo_url", "ingredients", "diet_labels", "health_labels")
    assert a_test.diet_labels == "diet_labels"
    refute a_test.diet_labels == "not_diet_labels"
  end

  test "health_labels variable is set correctly" do
    a_test = Recipe.new("name", "uri", "original_url", "photo_url", "ingredients", "diet_labels", "health_labels")
    assert a_test.health_labels == "health_labels"
    refute a_test.health_labels == "not_health_labels"
  end


end
