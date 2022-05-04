class FavoritesController < ApplicationController
  def index
    favorites = Favorite.all
    render json: favorites
  end

  def create
    favorite = Favorite.new(
      user_id: params[:user_id],
      plant_id: params[:plant_id],
      title: params[:title],
      image_url: params[:image_url]
    )
    favorite.save
    render json: favorite
  end

  def show
    favorite = Favorite.find_by(id: params[:id])
    render json: favorite
  end

  def destroy
    favorite = Favorite.find_by(id: params[:id])
    favorite.destroy
    render json: {message: "Favorite successfully deleted."}
  end
end
