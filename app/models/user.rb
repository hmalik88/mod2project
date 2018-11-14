class User < ApplicationRecord
  has_many :comments
  validates :username, uniqueness: true
end
