class PlantsController < ApplicationController

  def index
    # byebug
    plants = Plant.all
    render json: plants
  end

  def show
    # byebug
    plant = Plant.find_by(id: params[:id])
    render json: plant
  end

  def create
    # byebug
    plant = Plant.create(params.permit(:name, :image, :price))
    render json: plant, status: :created
  end

end