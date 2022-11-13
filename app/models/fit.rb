class Fit < ApplicationRecord
  belongs_to :user
  belongs_to :top
  belongs_to :pant
  belongs_to :sneaker

  validates :name, presence: true
end
