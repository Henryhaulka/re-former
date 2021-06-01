class UsersController < ApplicationController
    def new
        @user = User.new
    end
    def create
        @user = User.new(valid_params)
        if @user.save
            redirect_to @user
        else
            render :new
        end
    end

    private
    def valid_params
    params.require(:user).permit(:username, :email, :password)
    end
end
