class RecipesController < ApplicationController
  def index
  	keyword = params[:search] || "Chocolate"
  	@recipes = Recipe.for(keyword) || []
  end
end
