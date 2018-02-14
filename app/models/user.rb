
class User < ApplicationRecord
  # access all reviews that belong to a user
  has_many :reviews

  has_secure_password

  def review_average
    self.reviews.sum(:rating_out_of_ten)/(self.reviews.size == 0 ? 1 : self.reviews.size)
  end

  def full_name
    "#{firstname} #{lastname}"
  end

end
