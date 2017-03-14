class User < ApplicationRecord
  has_secure_password

  has_many :attendances
  has_many :concerts, through: :attendances

  validates :first_name, :last_name, :email, :password, presence: true
end
