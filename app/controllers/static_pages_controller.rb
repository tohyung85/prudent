class StaticPagesController < ApplicationController
  def landing_page
    @slide_images = SlideshowImage.all.order(row_order: :asc)
    render(layout: 'layouts/no_footer_layout')
  end
end
