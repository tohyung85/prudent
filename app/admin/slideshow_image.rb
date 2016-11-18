ActiveAdmin.register SlideshowImage do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  permit_params :photo, :row_order, :description, :black_description?

  index do
    column :photo do |slideshow_image|
      link_to admin_slideshow_image_path(slideshow_image) do
        image_tag slideshow_image.photo.thumb.url, class: 'active-admin-thumbnail'
      end
    end
    column :description
    column :row_order
    column :black_description?
    actions
  end

  show do
    attributes_table do
      row :photo do |slideshow_image|
        image_tag slideshow_image.photo.medium.url, class: 'active-admin-main-image'
      end
      row :description
      row :row_order
      row :black_description?
    end
  end
end
