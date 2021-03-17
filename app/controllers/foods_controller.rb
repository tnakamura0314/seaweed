class FoodsController < ApplicationController
  before_action :authenticate_user!, only: [:index, :new, :create, :edit, :update, :destroy]
  before_action :set_food, only: [:edit, :update, :destroy]

  def index
    @foods = Food.all
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    if @food.save
      redirect_to foods_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @food.update(food_params)
    if @food.status == 0 || @food.status == 1
      redirect_to foods_path
    elsif @food.status == 2
      redirect_to food_consumptions_path
    else
      redirect_to food_losses_path
    end
  end

  def destroy
    @food.destroy
    redirect_to root_path
  end

  # def search
  #   selection = params[:keyword]
  #   @foods = Food.sort(selection)
  # end

  private

  def food_params
    params.require(:food).permit(:image, :name, :number, :quantity_id, :deadline, :status).merge(user_id: current_user.id)
  end

  def set_food
    @food = Food.find(params[:id])
  end
end
