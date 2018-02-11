
class User < ApplicationRecord
  # access all reviews that belong to a user
  has_many :reviews

  has_secure_password

end
