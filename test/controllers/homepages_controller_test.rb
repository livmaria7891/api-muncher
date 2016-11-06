require 'test_helper'

class HomepagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show based on URI" do
    VCR.use_cassette("recipes") do
      get :show, {uri: 'http://www.edamam.com/ontologies/edamam.owl#recipe_637913ec61d9da69eb451818c3293df2'}
      assert_response :success
      assert_template :show
    end
  end

  test "search_results should pull list of recipes from API" do
    
  end

end
