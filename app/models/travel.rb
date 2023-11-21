class Travel < ApplicationRecord
  validates :perilousness, presence: true, inclusion: { in: 0..5}
  validates :name, presence: true
  validates :picture, presence: true
  validates :address, presence: true
  validates :period, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :duration, presence: true
  validates :number_of_travelers, presence: true
  has_one_attached :picture
  belongs_to :user
  has_many :bookings
end
