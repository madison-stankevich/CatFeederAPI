class Api::V1::CatsController < ApplicationController

    before_action :find_cat, only: [:update, :show, :destroy]
    def index
      @cats = Cat.all
      render json: @cats
    end

    def update
      @mark = @cat.mark
      @mark.assassin = Assassin.all.find do |assassin|
        assassin.cat_food.id == params[:cat_food_id].to_i
      end

      if @mark.save
        render json: @cat, status: :accepted
      else
        render json: { errors: @mark.errors.full_messages }, status: :unprocessible_entity
      end
    end

    def show
      render json: @cat
    end

    def destroy
      @cat.destroy
    end

    def create
      @mark = @cat.mark
      @mark.assassin = Assassin.all.find do |assassin|
        assassin.cat_food.id == params[:cat_food_id].to_i
      end
      @cat = Cat.create(cat_params)
      if @cat.save
        render json: @cat, status: :accepted
      else
        render json: { errors: @cat.errors.full_messages }, status: :unprocessible_entity
      end
    end

    private

    def cat_params
      params.permit(:description, :name, :image_url)
    end

    def find_cat
      @cat = Cat.find(params[:id])
    end

end
