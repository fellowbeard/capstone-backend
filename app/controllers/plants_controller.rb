class PlantsController < ApplicationController

  def index
    plants = Plant.all
    pp params[:search]
    if(params[:search])
      plants = plants.where("name ILIKE ?", "%#{params[:search]}%")
    end
    plants = plants.order(:id => :asc)

    render json: plants.as_json
  end
  
  def show
    plant = Plant.find_by(id: params[:id])
    render json: plant
  end
end

