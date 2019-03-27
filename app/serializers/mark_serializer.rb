class MarkSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :description, :assassin_id, :alive

  has_one :cat
end
