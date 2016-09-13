class ProjectsController < ApplicationController
  def index
    @all_projects = Project.all
    @all_categories = Category.all
  end

  def show
    return render_not_found unless current_project.published?
    @project_gallery_images = current_project.project_gallery_images.order(row_order: :asc)
  end

  private

  helper_method :current_project
  def current_project
    @project ||= Project.find(params[:id])
  end
end
