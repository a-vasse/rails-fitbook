class User < ApplicationRecord
  has_many :fits, dependent: :destroy
  has_many :watchs, through: :fits
  has_many :pants, through: :fits
  has_many :tops, through: :fits
  has_many :sneakers, through: :fits
  has_one_attached :photo

  validates :name, presence: true
  validates :name, uniqueness: true
end
