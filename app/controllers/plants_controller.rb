class PlantsController < ApplicationController

  def index
    plants = Plant.all
    render json: plants.as_json
  end
  
end

