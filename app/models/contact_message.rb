class ContactMessage < ActiveRecord::Base
  attr_accessible :body, :email, :name, :topic
  validates :body, :email, :name, :topic, presence: true

  after_create :send_contact_message

  private

  def send_contact_message
    ContactMailer.contact_me(self).deliver
     
   end 
end
