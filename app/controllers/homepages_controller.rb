require "#{Rails.root}/lib/Edemam_Api_Wrapper.rb"
require "#{Rails.root}/lib/recipe.rb"

class HomepagesController < ApplicationController
  def index
    @data = EdemamApiWrapper.listrecipes
  end

  def show
    @this_recipe = EdemamApiWrapper.findrecipe(params[:uri])
  end

  def search_results
    @data = EdemamApiWrapper.listrecipes(params[:query])
  end
end
