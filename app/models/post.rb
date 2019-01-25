class Post < ApplicationRecord
  belongs_to :user

  validates :title, uniqueness: true, presence: true, length: { minimum: 5 }
  validates :body, length: {in: 20..10000}
  validates :user, presence: true
  has_many :comments, as: :commentable
  has_many :commentators, through: :comments, source: :user


end
