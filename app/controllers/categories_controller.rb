class CategoriesController < ApplicationController
  def show
  end

  private

  helper_method :current_category
  def current_category
    @category ||= Category.find(params[:id])
  end
end
