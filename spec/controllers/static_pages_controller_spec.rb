require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  let(:user) { FactoryGirl.create(:user) }
  describe '#landing_page' do
    it 'should display landing page' do
      get :landing_page
      expect(response).to have_http_status(:success)
    end
  end

  describe '#about_page' do
    it 'should display about page' do
      get :about_page
      expect(response).to have_http_status(:success)
    end
  end
end
