class ProjectsController < ApplicationController
  def index
  end

  def show
  end

  private

  helper_method :current_project
  def current_project
    @project ||= Project.find(params[:id])
  end
end
