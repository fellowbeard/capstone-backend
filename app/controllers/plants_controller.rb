class PlantsController < ApplicationController

  def index
    plants = Plant.all
    render json: plants.as_json
  end
  
  def show
    plant = Plant.find_by(id: params[:id])
    render json: plant
  end
end

