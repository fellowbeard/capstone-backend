class AddTitleImageurlToFavorites < ActiveRecord::Migration[7.0]
  def change
    add_column :favorites, :title, :string
    add_column :favorites, :image_url, :string 
  end
end
