class FoodLossesController < ApplicationController
  
  def index
    @foods = Food.all
  end
end