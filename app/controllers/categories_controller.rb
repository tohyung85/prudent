class CategoriesController < ApplicationController
  def show
    @all_categories = Category.all
  end

  private

  helper_method :current_category
  def current_category
    @category ||= Category.find(params[:id])
  end
end
