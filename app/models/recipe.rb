class Recipe < ApplicationRecord
  belongs_to :category
  accepts_nested_attributes_for :category, reject_if: :all_blank
  has_many :users, through: :categories  
  has_many :ingredients, dependent: :destroy
  accepts_nested_attributes_for :ingredients, reject_if: :all_blank, allow_destroy: :true
  has_many :instructions, dependent: :destroy
  accepts_nested_attributes_for :instructions, reject_if: :all_blank, allow_destroy: :true
  has_many :comments
  validates :title, presence: true, uniqueness: true

  # def categories_attributes=(categories_attributes)
  #   categories_attributes.each do |i, category_attributes| 
  #   self.categories.build(category_attributes)
  #   end
  # end

  def self.alphabetize
    order(title: :asc)
  end

  def category_attributes=(hash_of_attributes)
    if !hash_of_attributes[:name].blank? 
        self.category = Category.find_or_create_by(hash_of_attributes)
    end
  end

  def category_name
    self.category ? self.category.name : "Category not available"
  end  

end
