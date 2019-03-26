class Api::V1::AssassinsController < ApplicationController
  before_action :get_assassin, only: :show
  def show
    render json: @assassin
  end

  def index
    @assassins = Assassin.all
    render json: @assassins
  end

  private

  def get_assassin
    @assassin = Assassin.find(params[:id])
  end
end
