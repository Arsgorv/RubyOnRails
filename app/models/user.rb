class User < ApplicationRecord
  validates :name, presence: true
  validates :name, length: {minimum: 2, maximum: 20}
  validates :email, uniqueness: true
  has_many :comments
  has_many :posts
end
