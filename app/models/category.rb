class Category < ApplicationRecord
  has_many :recipes

  validates :name, presence: true, uniqueness: true

  def recipes_attributes=(recipes_attributes)
    recipes_attributes.each do |i, recipe_attributes| 
    self.recipes.build(recipe_attributes)
    end
  end

end
