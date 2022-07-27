class Diary < ApplicationRecord
  has_one_attached :image


  validates :image, presence: true
  validates :explanation, presence: true


end
