class ChangePlantcareToString < ActiveRecord::Migration[7.0]
  def change
    change_column :plants, :plant_care, :string
  end
end
