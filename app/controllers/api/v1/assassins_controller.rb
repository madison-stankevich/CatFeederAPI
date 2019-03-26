class Api::V1::AssassinsController < ApplicationController
  before_action :get_assassin
  def show
    render json: @assassin
  end

  private

  def get_assassin
    @assassin = Assassin.find(params[:id])
  end
end
