class Cat < ApplicationRecord

  belongs_to :mark
  delegate :cat_food, to: :mark
  delegate :alive, to: :mark
  delegate :id, to: :cat_food, prefix: true

end
