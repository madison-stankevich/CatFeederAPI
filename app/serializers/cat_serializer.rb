class CatSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :description, :alive, :cat_food_id, :mark_id
end
