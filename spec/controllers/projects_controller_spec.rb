require 'rails_helper'

RSpec.describe ProjectsController, type: :controller do
  let(:project) { FactoryGirl.create(:project) }
  let(:unpublished_project) { FactoryGirl.create(:unpublished_project) }
  let(:project_main_image) { FactoryGirl.create(:project_main_image) }
  describe '#index' do
    render_views
    it 'should allow user to access page' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe '#show' do
    render_views
    it 'should allow user to see individual project page' do
      get :show, id: project.id
      expect(response).to have_http_status(:success)
    end

    it 'should display 404 page if not found' do
      get :show, id: 'YOLO'
      expect(response).to have_http_status(:not_found)
    end

    it 'should return a 404 page if project is not yet published' do
      get :show, id: unpublished_project.id
      expect(response).to have_http_status(:not_found)
    end
  end
end
