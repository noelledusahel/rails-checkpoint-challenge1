class User < ApplicationRecord
  has_many :concerts, through: :attendence

  validates :first_name, :last_name, :email, :password, presence: true
  validates :email, uniqueness: true

  include BCrypt

  def self.authenticate(args)
    user = User.find_by(email: args[:email])
    if user
      return user if user.password == args[:password]
    else
      nil
    end
  end

  def password
    @password ||= Password.new(hashed_password)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.hashed_password = @password
  end
end
