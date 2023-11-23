class Travel < ApplicationRecord
  # SEARCH
  include PgSearch::Model
  pg_search_scope :search_by_name_and_description_and_period_and_address,
    against: [ :name, :description, :period, :address ],
    using: {
      tsearch: { prefix: true }
    }
  validates :perilousness, presence: true, inclusion: { in: 0..10}
  validates :name, presence: true
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
