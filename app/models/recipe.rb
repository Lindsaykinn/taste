class Recipe < ApplicationRecord
  validates :title, presence: true

  belongs_to :category 

  accepts_nested_attributes_for :category, reject_if: :all_blank

  # def categories_attributes=(categories_attributes)
  #   categories_attributes.each do |i, category_attributes| 
  #   self.categories.build(category_attributes)
  #   end
  # end


  def category_name
    self.category ? self.category.name : "Category not available"
  end  

end
