class Concert < ApplicationRecord
	has_many :shows, class_name: "Attendance", foreign_key: :concert
	has_many :attendees, through: :showsc
end
