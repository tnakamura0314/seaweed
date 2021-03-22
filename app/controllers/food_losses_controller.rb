class FoodLossesController < ApplicationController
  before_action :authenticate_user!, only: [:index]

  def index
    @foods = Food.order("deadline DESC")
  end
end
