class Review < ApplicationRecord
  # A review belongs to one movie and one user
  # Is possible to call @review.movie or @review.user and access the movie/user the review belongs to
  belongs_to :user
  belongs_to :movie

  # Review validations
  validates :user,
    presence: true

  validates :movie,
    presence: true

  validates :text,
    presence: true

  # Rating: 1..10
  validates :rating_out_of_ten,
    numericality: { only_integer: true }
  validates :rating_out_of_ten,
    numericality: { greater_than_or_equal_to: 1 }
  validates :rating_out_of_ten,
    numericality: { less_than_or_equal_to: 10 }

end
