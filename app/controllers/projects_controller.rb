class ProjectsController < ApplicationController
  def index
  end

  def show
    return render_not_found unless current_project.published?
  end

  private

  helper_method :current_project
  def current_project
    @project ||= Project.find(params[:id])
  end
end
