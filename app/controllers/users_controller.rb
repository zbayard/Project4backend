class UsersController < ApplicationController
    before_action :authenticate, only: [:show, :update]

    def login
        user = User.find_by(username: params[:username])
        render json: User.first
    end

    def show
        render json: @current_user
    end

    def update
        @current_user.update(bio: params[:bio], image: params[:image]
        render json: @current_user)
    end

    # def signup
    #     user = User.create(user_params)
    # end

    # private

    # def user_params
    #     params.permit(:username, :password, :name, :image, :bio)
    # end
    
end
