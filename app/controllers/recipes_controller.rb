class RecipesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]

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

  def show
  end

  def edit
    redirect_to root_path  unless @recipe.user_id == current_user.id
  end

  def update
    redirect_to root_path  unless @recipe.user_id == current_user.id
    if @recipe.update(recipe_params)
      redirect_to recipe_path
    else
      render :edit
    end
  end

  def destroy
    if @recipe.user_id == current_user.id
      @recipe.destroy
      redirect_to recipes_path
    end
  end

  private
  def recipe_params
    params.require(:recipe).permit(:image, :name, :food_text, :recipe_text).merge(user_id: current_user.id)
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
end
