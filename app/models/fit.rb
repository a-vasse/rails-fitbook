class Fit < ApplicationRecord
  belongs_to :user
  belongs_to :top
  belongs_to :pant
  belongs_to :sneaker
  belongs_to :watch
  
  validates :name, presence: true
end
