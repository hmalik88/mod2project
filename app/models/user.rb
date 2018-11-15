class User < ApplicationRecord
  has_many :comments
  has_many :posts, through: :comments
  validates :username, uniqueness: true

  def authenticate(plaintext_password)
    BCrypt::Password.new(self.password_digest) == plaintext_password
  end

  def password=(plaintext_password)
    self.password_digest = BCrypt::Password.create(plaintext_password)
  end

end 
