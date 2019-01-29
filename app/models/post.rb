class Post < ApplicationRecord
  belongs_to :user

  validates :title, uniqueness: true, presence: true, length: { minimum: 5 }
  validates :body, length: {in: 20..10000}
  validates :user, presence: true
  has_many :comments, as: :commentable
  has_many :commentators, through: :comments, source: :user

#  def self.written_by_moderators
#    Post.joins(:user).where(users: {moderator:true}).count
#  end

  scope :written_by_moderator, -> {joins(:user).where(users: {moderator: true})}
end
