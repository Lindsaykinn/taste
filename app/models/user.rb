class User < ApplicationRecord
 has_many :recipes, through: :categories
 has_many :categories
 has_secure_password
 validates :email, presence: true, uniqueness: true
 validates :first_name, :last_name, presence: true 

  def to_s
    self.first_name + " " + self.last_name
  end
end
