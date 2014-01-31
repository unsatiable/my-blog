class Post < ActiveRecord::Base
  has_many :comments
  scope :featured, -> { where(featured: true)}
  scope :published, -> { where("published_at <= ?", Time.now).order("published_at DESC") }
  attr_accessible :author, :body, :published_at, :title, :featured
  validates :author, presence: true
end
