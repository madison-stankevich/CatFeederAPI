class CatFoodSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :description, :price
end
