class AddNameToPlants < ActiveRecord::Migration[7.0]
  def change
    add_column :plants, :name, :string
    add_column :plants, :description, :string
    add_column :plants, :image_url, :string

  end
end
