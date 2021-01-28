class Recipe < ApplicationRecord
  belongs_to :user
  has_many :ingredients
  has_many :directions
  validates :title, presence: true
  

  def ingredients_attributes=(ingredients_attributes)
    ingredients_attributes.each do |ingredient_attributes|
      self.ingredients.build(ingredient_attributes)
    end
  end

  def instructions_attributes=(instructions_attributes)
    instructions_attributes.each do |instruction_attributes|
      self.instructions.build(instruction_attributes)
    end
  end
  

end
