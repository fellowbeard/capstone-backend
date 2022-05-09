class AddPlantCareToPlants < ActiveRecord::Migration[7.0]
  def change
    add_column :plants, :plant_care, :text
    add_column :users, :phone_number, :string
  end
end
