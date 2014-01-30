class Post < ActiveRecord::Base
  scope :featured, -> { where(featured: true)}
  scope :published, -> { where("published_at <= ?", Time.now).order("published_at DESC") }
  attr_accessible :author, :body, :published_at, :title, :featured
end
