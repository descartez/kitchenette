class Ingredient < ApplicationRecord
  belongs_to :recipe

  validates :title, presence: true
  validates :unit, presence: true
end
