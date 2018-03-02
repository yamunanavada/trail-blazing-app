class Api::V1::SavedRoutesController < ApplicationController
  before_action :authorized

  def index
  end

  def create
    byebug
    @saved_route = SavedRoute.new(saved_route_params)

    if @saved_route.save
      render json: @saved_route
    else
      render json: {errors: @saved_route.errors.full_messages}, status: 422
    end

  end

  def update
  end

  def delete
  end

  private

  def saved_route_params
    params.require(:saved_route).permit(:user_id, :route_id, :rating, :comment)
  end

end
