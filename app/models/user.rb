class User < ApplicationRecord
 
 validates :email, presence: true, uniqueness: true
 validates :first_name, :last_name, presence: true 
 has_secure_password
  def to_s
    self.first_name + " " + self.last_name
  end
end
