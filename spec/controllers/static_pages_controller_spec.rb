require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  let(:user) { FactoryGirl.create(:user) }
  describe '#landing_page' do
    it 'should display landing page' do
      user
    end
  end
end
