class User < ApplicationRecord
  has_many :categories
  has_many :recipes, through: :categories
  has_many :comments
 has_secure_password
 validates :email, presence: true, uniqueness: true
 validates :name, presence: true 

 
end
