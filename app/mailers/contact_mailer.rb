class ContactMailer < ApplicationMailer
  default from: 'prudent@example.com'

  def contact_message_sent(contact_message_id)
    @contact_message = ContactMessage.find(contact_message_id)
    mail(to: 'tantohyung@gmail.com',
         subject: "#{@contact_message.name} has sent a message",
         from: @contact_message.email)
  end
end
