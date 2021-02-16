class BeersController < ApplicationController

    def index
        beers = Beer.all
        render json: beers
    end

    def show
        beer = Beer.find(params[:id])
        render json: beer
    end

    def create
        @beer = Beer.create(beer_params)
        render json: @beer
    end

    private

    def beer_params
        params.require(:beer).permit(:name, :user_id, :brewery_id, :style, :image, :abv, :comment)
    end
    
end
