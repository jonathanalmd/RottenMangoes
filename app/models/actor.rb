
class Actor < ApplicationRecord
  has_many :contracts
  has_many :movies, through: :contracts
end

