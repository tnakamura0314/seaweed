class RecipesController < ApplicationController
  before_action :authenticate_user!

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to recipes_path
    else
      render :new
    end
  end

  def recipe_params
    params.require(:recipe).permit(:image, :name, :food_text, :recipe_text).merge(user_id: current_user.id)
  end
end
