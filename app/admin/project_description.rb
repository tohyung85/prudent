ActiveAdmin.register ProjectDescription do
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

  permit_params :project_id, :contents

  index do
    column :project_id
    column :contents do |project_description|
      link_to admin_project_description_path(project_description) do
        strip_tags(project_description.contents)
      end
    end
    actions
  end

  show do
    attributes_table do
      row :project
      row :contents do |project_description|
        strip_tags(project_description.contents)
      end
    end
  end

  form title: 'Project Description' do |_f|
    inputs 'Details' do
      input :project
      input :contents, as: :ckeditor, input_html: { ckeditor: { toolbar: 'Full' } }
    end
    actions
  end
end
