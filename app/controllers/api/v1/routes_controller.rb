class Api::V1::RoutesController < ApplicationController

  def index
  end

  def create
    @route = Route.new(route_params)
    if @route.save
      render json: @route
    else
      render json: {errors: @route.errors.full_messages}, status: 422
    end
  end

  def update
  end

  def delete
  end

  private

  def route_params
    params.require(:route).permit(:name, :city, :description, :markers, :distance, :difficulty)
  end

end
