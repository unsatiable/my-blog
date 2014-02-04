class Comment < ActiveRecord::Base
  belongs_to :post
  attr_accessible :author, :message

  validates :author, presence: true
  validates :message, length: {maximum: 500}, presence: true
  validates :post, presence: true
end
