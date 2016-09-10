ActiveAdmin.register ProjectMainImage do
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
  permit_params :project_id, :photo

  index do
    column :project_id
    column :photo do |project_main_image|
      link_to admin_project_main_image_path(project_main_image) do
        image_tag project_main_image.photo.thumb.url, class: 'active-admin-thumbnail'
      end
    end
    actions
  end

  show do
    attributes_table do
      row :project
      row :photo do |project_main_image|
        image_tag project_main_image.photo.medium.url, class: 'active-admin-main-image'
      end
    end
  end
end
