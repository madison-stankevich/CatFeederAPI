class Mark < ApplicationRecord

  has_one :cat
  belongs_to :assassin
  has_one :cat_food, through: :assassin

end
