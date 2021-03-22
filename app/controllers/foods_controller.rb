class FoodsController < ApplicationController
  before_action :authenticate_user!, only: [:index, :new, :create, :edit, :update, :destroy]
  before_action :set_food, only: [:edit, :update, :destroy]

  def index
    @foods = Food.order("deadline ASC")
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
    redirect_to foods_path
  end

  def destroy
    @food.destroy
    redirect_to foods_path
  end

  private

  def food_params
    params.require(:food).permit(:image, :name, :number, :quantity_id, :deadline, :status).merge(user_id: current_user.id)
  end

  def set_food
    @food = Food.find(params[:id])
  end
end
