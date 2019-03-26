class CatSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :description, :alive
  belongs_to :cat_food
end
