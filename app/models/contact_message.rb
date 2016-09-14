class ContactMessage < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 3 }
  validates :email, presence: true, length: { minimum: 3 }
  validates :message, presence: true, length: { minimum: 3 }

  after_create :send_user_message

  def send_user_message
    ContactMailer.contact_message_sent(id).deliver_now
  end
end
