class Api::V1::CatsController < ApplicationController

    before_action :find_note, only: [:update, :show, :destroy]
    def index
      @cats = Cat.all
      render json: @cats
    end

    def update
      @cat.update(cat_params)
      if @cat.save
        render json: @cat, status: :accepted
      else
        render json: { errors: @cat.errors.full_messages }, status: :unprocessible_entity
      end
    end

    def show
      render json: @cat
    end

    def destroy
      @cat.destroy
    end
    #
    # def create
    #   @cat = Cat.create(cat_params)
    #   if @cat.save
    #     render json: @cat, status: :accepted
    #   else
    #     render json: { errors: @cat.errors.full_messages }, status: :unprocessible_entity
    #   end
    # end

    private

    def cat_params
      params.permit(:alive)
    end

    def find_cat
      @cat = Cat.find(params[:id])
    end

end
