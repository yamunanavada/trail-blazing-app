class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:index, :create]

  def index
    @users = User.all
    render json: @users, status: 200
  end

  def profile
    if current_user #current_user comes from application controller; it finds current user by id found in decoded JWT token
      render json: current_user, status: 200
    else
      render json: { message: "User not found" }, status: 404
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      token = encode_token({ user_id: @user.id })
      byebug
      render json: {user: @user, jwt: token},  status: 200
    else
      render json: {errors: @user.errors.full_messages}, status: 422
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :birthday, :username, :password, :password_confirmation)
  end


end
