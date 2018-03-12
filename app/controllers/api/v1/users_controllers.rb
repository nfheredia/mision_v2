module Api::V1
  class UsersController < ApplicationController
    def index
      @users = Usuario.order('created_at DESC')
      render json: @users
    end

    def create
      @user = Usuario.create(user_params)
      render json: @user
    end

    def update
      @user = Usuario.find(params[:id])
      @user.update_attributes(user_params)
      render json: @user
    end

    def destroy
      @user = Usuario.find(params[:id])
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