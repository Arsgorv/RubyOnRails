class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :body, length: {in: 5..400}
end

