class Comment < ApplicationRecord
  belongs_to :user, counter_cache:true
  belongs_to :commentable, polymorphic: true

  validates :body, length: {in: 3..4000}
  validates :user, :body, :commentable, presence: true

end

