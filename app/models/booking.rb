class Booking < ApplicationRecord
  STATUS = ["pending", "validated", "refused"]
  validates :status, inclusion: { in:  STATUS}
  validates :number_of_people, presence: true
  validates :date_of_beginning, presence: true
  validates :date_of_ending, presence: true
  belongs_to :user
  belongs_to :travel
end
