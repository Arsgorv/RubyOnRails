class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: { minimum: 5 }
  validates :title, uniqueness: true
  validates :body, length: {in: 5..1000}
  has_many :comments


end
