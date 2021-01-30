class Category < ApplicationRecord
  belongs_to :user
  has_many :recipes
  accepts_nested_attributes_for :recipes, reject_if: :all_blank

  validates :name, presence: true, uniqueness: true

  def self.alphabetize
    order(name: :asc)
  end
  # def recipes_attributes=(recipes_attributes)
  #   recipes_attributes.each do |i, recipe_attributes| 
  #   self.recipes.build(recipe_attributes)
  #   end
  # end

end
