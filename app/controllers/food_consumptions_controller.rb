class FoodConsumptionsController < ApplicationController
  before_action :authenticate_user!, only: [:index]

  def index
    @foods = Food.order("deadline ASC")
  end
end
