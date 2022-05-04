class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :plant_id, :title, :image_url
end
