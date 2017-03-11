class Concert < ApplicationRecord
  has_many :attendees, through: :attenence, source: "User"

  validates :band, :venue, :date, :start_time, presence: true
end
