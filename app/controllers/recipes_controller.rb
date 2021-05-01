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

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
    redirect_to root_path  unless @recipe.user_id == current_user.id
  end

  def update
    @recipe = Recipe.find(params[:id])
    redirect_to root_path  unless @recipe.user_id == current_user.id
    if @recipe.update(recipe_params)
      redirect_to recipe_path
    else
      render :edit
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    if @recipe.user_id == current_user.id
      @recipe.destroy
      redirect_to recipes_path
    end
  end

  private
  def recipe_params
    params.require(:recipe).permit(:image, :name, :food_text, :recipe_text).merge(user_id: current_user.id)
  end
end
