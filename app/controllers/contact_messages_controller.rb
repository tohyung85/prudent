class ContactMessagesController < ApplicationController
  def create
    @contact_messages = ContactMessage.create(contact_message_params)
    return render :new, status: :unprocessible_entity unless @contact_messages.valid?

    @contact_messages = ContactMessage.new
    render :new
  end

  def new
    @contact_messages = ContactMessage.new
  end

  private

  def contact_message_params
    params.require(:contact_message).permit(:name, :email, :phone, :message)
  end
end
