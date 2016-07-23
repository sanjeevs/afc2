class User < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false}
  before_save :create_remember_token

  has_secure_password
  validates :password, length: { minimum: 6 }
  validates :password_confirmation, presence: true

  before_validation { |user| user.name = name.downcase }
  private
  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end
end
