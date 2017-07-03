require 'bcrypt'

class User < ActiveRecord::Base
  has_many :channels, :through => :subscriptions
  has_many :subscriptions

  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hashed_password, presence: true

  def password
    @password ||= BCrypt::Password.new(hashed_password)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.hashed_password = @password
  end

  def authenticate(password)
    self.password == password
  end

  def self.authenticate(email, password)
    user = self.find_by(email: email)
    if user.authenticate(password)
      user
    else
      nil
    end
  end
end
