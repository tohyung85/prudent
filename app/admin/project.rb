ActiveAdmin.register Project do
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
  scope :all
  scope :unpublished
  scope :published

  permit_params :name, :location, :published?, :size, :category_id

  index do
    column :name
    column :category
    column :location
    column :size, sortable: :size do |project|
      # div class: 'image' do
      #   "something"
      # end
      # wrap field in div, for images maybe, CSS styling in active_admin.css.scss

      "#{project.size}m2"
    end
    column 'Creation Date', :created_at
    column :published?
    actions
  end

  form title: 'Create a New Project' do |f|
    f.inputs 'Basic Information' do
      f.input :category
      f.input :name
      f.input :location
      f.input :size, sortable: :size do |project|
        "#{project.size}m2"
      end
      f.has_many :project_main_image, allow_destroy: true do |a|
        a.input :photo
        a.input :orientation
      end
      f.has_many :project_descriptions, allow_destroy: true do |a|
        a.input :contents, as: :ckeditor, input_html: { ckeditor: { toolbar: 'Full' } }
      end
      f.has_many :project_gallery_images, allow_destroy: true do |a|
        a.input :photo
        a.input :orientation
        a.input :row_order
      end
      f.actions
    end
  end
end
