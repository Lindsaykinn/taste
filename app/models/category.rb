class Category < ApplicationRecord
  has_many :recipes

  validates :name, presence: true, uniqueness: true

  accepts_nested_attributes_for :recipes, reject_if: :all_blank

  # def recipes_attributes=(recipes_attributes)
  #   recipes_attributes.each do |i, recipe_attributes| 
  #   self.recipes.build(recipe_attributes)
  #   end
  # end

end
