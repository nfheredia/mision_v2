module Api::v1
  class UsersController < ApplicationController
    def index
      @users = User.all
      render json: @users
    end

    def create
      @user = User.create(user_params)
      render json: @user
    end

    def update
      @user = User.find(params[:id])
      @user.update_attributes(user_params)
      render json: @user
    end

    def destroy
      @user = User.find(params[:id])
      if @user.destroy
        head :no_content, status: :ok
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    end

    private

    def user_params
      params.require(:user).permit(:title, :body)
    end

  end
end