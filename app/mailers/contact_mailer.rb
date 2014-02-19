class ContactMailer < ActionMailer::Base
  default from: "admin@gingerbreadman.com"

    def contact_me(cantact_message)
      @contact_message = contact_message
      mail(to: 'am24060@yahoo.com', subject: "Message from website")
    end  
end
