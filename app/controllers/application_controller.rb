class ApplicationController < ActionController::API
    
    
    
    def authenticate
        @current_user = AuthorizeRequest.new(request.headers).user

        if @current_user.nil?
            render json: {errors:["not authorized"]}, status: :unauthorized
        end
    end
    
end
