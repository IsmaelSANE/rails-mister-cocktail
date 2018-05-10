class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, uniqueness: true
  validates_uniqueness_of :cocktail, :ingredient
  validates_uniqueness_of :cocktail, :scope => [:ingredient]
end
