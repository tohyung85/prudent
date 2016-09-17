class ContactMessagesController < ApplicationController
  def create
    @contact_messages = ContactMessage.create(contact_message_params)
    if @contact_messages.valid?
      @contact_messages = ContactMessage.new
      @displayform = 'hide-form'
      @displaythankyou = 'display-thank-you'
      render :new
    else
      @displayform = 'contact-form'
      @displaythankyou = 'hide-thank-you'
      return render :new, status: :unprocessible_entity
    end
  end

  def new
    @contact_messages = ContactMessage.new
    @displayform = 'contact-form'
    @displaythankyou = 'hide-thank-you'
  end

  private

  def contact_message_params
    params.require(:contact_message).permit(:name, :email, :phone, :message)
  end
end
