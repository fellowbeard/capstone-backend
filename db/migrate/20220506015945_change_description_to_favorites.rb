class ChangeDescriptionToFavorites < ActiveRecord::Migration[7.0]
  def change
    change_column :favorites, :description, :string
  end
end
