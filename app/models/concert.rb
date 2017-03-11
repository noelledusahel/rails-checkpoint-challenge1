class Concert < ApplicationRecord

  has_many :attendances
  has_many :patrons, through: :attendances, source: :user
end
