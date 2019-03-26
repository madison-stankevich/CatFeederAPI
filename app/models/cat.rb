class Cat < ApplicationRecord

  belongs_to :mark
  delegate :cat_food, to: :mark
  delegate :alive, to: :mark

end
