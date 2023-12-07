class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find_by(id: params[:id])
        render json: @user
    end

    def create
        @user = User.new(users_params)
        @user.save
        render json: @user
    end

    def update
        @user = User.find_by(id: params[:id])
        puts @user
        @user.update(users_params)
        render json: @user
    end


    def destroy
        @user = User.find_by(id: params[:id])
        @user.destroy
        render json: @user
    end

    private
     def users_params
        params.require(:user).permit(:name, :age)
     end
end
