class Concert < ApplicationRecord
  has_many :attendees, through: :attenence, source: :user

  validates :band, :venue, :date, :start_time, presence: true
end
