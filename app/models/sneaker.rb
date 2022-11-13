class Sneaker < ApplicationRecord
  has_many :fits

  validates :name, presence: true
  validates :name, uniqueness: true
end
