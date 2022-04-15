class FavoritesController < ApplicationController
  def index
    favorites = Favorite.all
    render json: favorites.as_json
  end

  # def create
  #   favorite = Favorite.new(
  #     user_id: params[:user_id],
  #     plant_id: params[:plant_id]
  #   )
  #   favorite.save
  #   render json: favorite.as_json
  # end

end
