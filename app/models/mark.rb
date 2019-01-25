class Mark < ApplicationRecord
  belongs_to :user
  belongs_to :post
  belongs_to :comment

  validates :user, :post, :value, presence: true
  validates :value, numericality: {
                                    only_integer: true,
                                    greater_rhan_or_equal_to: 1,
                                    less_than_or_equal_to: 5
                                  }
end
