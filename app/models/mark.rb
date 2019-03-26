class Mark < ApplicationRecord

  has_one :cat 
  has_one :assassin
  has_one :cat_food, through: :assassin

end
