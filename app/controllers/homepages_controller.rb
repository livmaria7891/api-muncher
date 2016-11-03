require "#{Rails.root}/lib/Edemam_Api_Wrapper.rb"
require "#{Rails.root}/lib/recipe.rb"
require "kaminari"

class HomepagesController < ApplicationController
  def index

  end

  def show
    @this_recipe = EdemamApiWrapper.findrecipe(params[:uri])
  end

  def search_results
    @data = paginate EdemamApiWrapper.listrecipes(params["query"]), per_page:10
  end
end
