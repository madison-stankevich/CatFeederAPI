class MarkSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :description

  has_one :cat
  belongs_to :assassin
end
