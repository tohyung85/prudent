class StaticPagesController < ApplicationController
  def landing_page
    render(:layout => "layouts/no_footer_layout")
  end
end
