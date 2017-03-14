class Concert < ApplicationRecord

  has_many :attendances
  has_many :attendees, through: :attendances, source: :user

  validates :band, :venue, :date, :start_time, presence: true
end
