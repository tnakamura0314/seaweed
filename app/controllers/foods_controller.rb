class FoodsController < ApplicationController

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
    @food = Food.find(params[:id])
  end

  def update
    @food = Food.find(params[:id])
    @food.update(food_params)
    if @food.status == 0 || @food.status == 1
      redirect_to foods_path
    elsif @food.status == 2
      redirect_to food_consumptions_path
    else
      redirect_to food_losses_path
    end
  end

  private

  def food_params
    params.require(:food).permit(:image, :name, :number, :quantity_id, :deadline, :status).merge(user_id: current_user.id)
  end
end
