class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, uniqueness: true
  validates_uniqueness_of :cocktail
  validates_uniqueness_of :ingredient
end
