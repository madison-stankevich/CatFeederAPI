class CatFood < ApplicationRecord
  belongs_to :assassin
  delegate :price, to: :assassin
end
