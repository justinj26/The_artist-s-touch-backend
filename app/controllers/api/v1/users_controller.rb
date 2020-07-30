class Api::V1::UsersController < ApplicationController

    def index
        users = User.all 
        render json: users 
    end
    
    def new

    end

    def create
        #find out if the user is valid, if yes, input the username into the database,
        user = User.new(user_params)
        if user.valid?
            # byebug
            user.save 
            render json: user 
        else 
            render json: { created_at: "This username is not unique" }
        # if no, render a json message saying not valid, and find a way to display on the other side
        end
    end

    # basic profile information, if anything, and maybe a picture
    def show
        user = User.find_by(username: params[:username])
        render json: user 
    end

    private 

    def user_params
        params.require(:user).permit(:name, :username)
    end
end
