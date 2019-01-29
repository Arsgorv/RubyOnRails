class User < ApplicationRecord
  validates :name, presence: true
  validates :name, length: {minimum: 2, maximum: 20}
  validates :email, uniqueness: true
  validate :z_hater

  has_many :comments, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :commented_posts, through: :comments, source: :commentable, source_type: :Post
  has_many :commented_users, through: :comments, source: :commentable, source_type: :User

  before_destroy :log_before_destroy
  after_destroy :log_after_destroy

  private

  def z_hater
    if name.include?('z')
      errors.add(:name, " can`t include 'z'. Sorry, I hate it!`")
    end
  end

  def log_before_destroy
    Rails.logger.info "###### We are going to destroy user #{@name} ######"
  end

  def log_after_destroy
    Rails.logger.info "###### User #{@name} successfully destroyed ######"
  end
end
