require 'rails_helper'

RSpec.describe ContactMessagesController, type: :controller do
  describe '#create' do
    it 'should create a message' do
      expect do
        post :create, contact_message: {
          name: 'Joshua',
          email: 'tytan@gmail.com',
          phone: '213 982',
          message: 'Hello there'
        }
      end.to change { ContactMessage.count }.by 1
    end
  end

  describe '#new' do
    render_views
    it 'should display contact page' do
      get :new
      expect(response).to have_http_status(:success)
    end
  end
end
