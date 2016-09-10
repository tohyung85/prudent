require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
  let(:project) { FactoryGirl.create(:project) }
  render_views
  describe '#show' do
    it 'should show page with all projects of this category' do
      get :show, id: project.category.id
      expect(response).to have_http_status(:success)
    end
    it 'should return 404 error if no category found' do
      get :show, id: 'YOLO'
      expect(response).to have_http_status(:not_found)
    end
  end
end
