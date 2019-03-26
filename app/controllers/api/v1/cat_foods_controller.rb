class Api::V1::CatFoodsController < ApplicationController
  before_action :get_cat_food
  def show
    render json: @cat_food
  end

  private

  def get_cat_food
    @cat_food = CatFood.find(params[:id])
  end
end
