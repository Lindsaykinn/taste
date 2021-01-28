class Recipe < ApplicationRecord
  validates :title, presence: true

  belongs_to :category  

  def category_name
    self.cateogory ? self.category.name : "Category not available"
  end  

end
