
class Movie < ActiveRecord::Base
# class Movie < ApplicationRecord
  mount_uploader :image, ImageUploader

  # access all reviews for a give movie
  has_many :reviews

  has_many :contracts
  has_many :actors, through: :contracts

  validates :title,
    presence: true

  validates :director,
    presence: true

  validates :runtime_in_minutes,
    numericality: { only_integer: true }

  validates :description,
    presence: true

  # validates :poster_image_url,
  #   presence: true

  validates :release_date,
    presence: true

  validate :release_date_is_in_the_past

  # scope :movies_filter, -> (title, director, min_runtime, max_runtime) do
  #   where("title LIKE ? AND director LIKE ? AND runtime_in_minutes BETWEEN ? AND ?",
  #     "%#{title}%",
  #     "%#{director}%",
  #     min_runtime,
  #     max_runtime
  #   )
  # end

  scope :title_filter, -> (title) do
    where("title LIKE ?",
      "%#{title}%",
    )
  end

  scope :director_filter, -> (director) do
    where("director LIKE ?",
      "%#{director}%",
    )
  end

  scope :runtime_filter, -> (min_runtime, max_runtime) do
    where("runtime_in_minutes BETWEEN ? AND ?",
      min_runtime,
      max_runtime
    )
  end


  # Can call this method from anywhere
  def review_average
    reviews.sum(:rating_out_of_ten)/(reviews.size == 0 ? 1 : reviews.size)
  end

  protected

  def release_date_is_in_the_past
    if release_date.present?
      errors.add(:release_date, "should be in the past") if release_date > Date.today
    end 
  end

  def movie_params
    params.require(:movie).permit(:title, :director, :runtime_in_minutes, :release_date, :poster_image_url, :image) 
  end


end
