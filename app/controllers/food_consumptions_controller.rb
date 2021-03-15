class FoodConsumptionsController < ApplicationController

  def index
    @foods = Food.all
  end
end
