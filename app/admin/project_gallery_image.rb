ActiveAdmin.register ProjectGalleryImage do
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
  permit_params :project_id, :photo, :row_order, :full_width

  index do
    column :project_id
    column :photo do |project_gallery_image|
      link_to admin_project_gallery_image_path(project_gallery_image) do
        image_tag project_gallery_image.photo.thumb.url, class: 'active-admin-thumbnail'
      end
    end
    column :orientation
    column :row_order
    column :full_width
    actions
  end

  show do
    attributes_table do
      row :project
      row :photo do |project_gallery_image|
        image_tag project_gallery_image.photo.medium.url, class: 'active-admin-main-image'
      end
      row :orientation
      row :row_order
      row :full_width
    end
  end
end
