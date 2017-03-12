class Attendance < ApplicationRecord

  belongs_to :user
  belongs_to :concert

  validates_uniqueness_of :concert_id, scope: :user_id

end
