
class Actor < ApplicationRecord
  has_many :contracts
  has_many :movies, through: :contracts

  def full_name
    "#{firstname} #{lastname}"
  end

end

