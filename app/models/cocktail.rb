class Cocktail < ApplicationRecord
  attr_reader :ingredient, :dose

  validates :name, presence: true, uniqueness: true
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
end
