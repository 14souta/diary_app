class Diary < ApplicationRecord
  has_one_attached :image
  belongs_to :user


  validates :image, presence: true
  validates :explanation, presence: true


end
