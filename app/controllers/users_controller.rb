class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end
    
        
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to @user
        else
            render :new
        end
    end

    def edit
        @user = User.find(params[:id])
        if @user.edit(user_params)
            redirect_to @user
        else
            render :edit
    end

    private
    def user_params
    params.require(:User).permit(:username, :email, :password)
    end
end
