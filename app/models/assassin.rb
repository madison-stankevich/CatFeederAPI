class Assassin < ApplicationRecord

  has_many :marks
  has_one :cat_food
  has_many :cats, through: :marks

end
