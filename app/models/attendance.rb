class Attendance < ApplicationRecord
	belongs_to :attendees, class_name: "User", foreign_key: :attendee
	belongs_to :concert, foreign_key: :concert
end
