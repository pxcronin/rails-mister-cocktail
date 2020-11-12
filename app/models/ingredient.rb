class Ingredient < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :doses, foreign_key: "ingredient_id"
end
