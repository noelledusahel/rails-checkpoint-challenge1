class User < ApplicationRecord
	has_many :attendances, foreign_key: :attendee
	has_many :concerts, through: :attendances

	has_secure_password
end
