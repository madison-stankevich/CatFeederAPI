class Api::V1::CatFoodsController < ApplicationController
  before_action :get_cat_food, only: :show
  def show
    render json: @cat_food
  end

  def index
    @cat_foods = CatFood.all
    render json: @cat_foods
  end

  private

  def get_cat_food
    @cat_food = CatFood.find(params[:id])
  end
end
