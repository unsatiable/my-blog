class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  
  scope :featured, -> { where(featured: true)}
  scope :published, -> { where("published_at <= ?", Time.now).order("published_at DESC") }
  attr_accessible :author, :title, :body, :published_at, :featured
  validates :author, 
              :title, 
              :body, 
              presence: true 

  validates :title, 
              length: { in: 3..50 }, 
              uniqueness: true
  validates :published_at_is_in_the_future, on: :create
  private
  
  def published_at_is_in_the_future
    unless published_at >= Time.now
    errors.add(:published_at,"Published at must be in the future!")
    end
  end            
end
