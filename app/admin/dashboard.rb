ActiveAdmin.register_page 'Dashboard' do
  menu priority: 1, label: proc { I18n.t('active_admin.dashboard') }

  content title: proc { I18n.t('active_admin.dashboard') } do
    div class: 'blank_slate_container', id: 'dashboard_default_message' do
      span class: 'blank_slate' do
        span "Welcome #{current_user.email}!"
        small 'what would you like to do today?'
      end
    end

    section 'Unpublished Projects' do
      if Project.unpublished.count.nonzero?
        table_for Project.unpublished.order('created_at desc').limit(5) do |_project|
          column :name do |project|
            link_to project.name, admin_project_path(project)
          end
          column :category
          column :location
          column :size, sortable: :size do |project|
            "#{project.size}m2"
          end
          column 'Creation Date', :created_at
          column :published?
        end
      else
        columns do
          column do
            panel 'Info' do
              para 'Nice. All caught up!'
            end
          end
        end
      end
    end

    section 'Recent Projects' do
      table_for Project.order('created_at desc').limit(5) do |_project|
        column :name do |project|
          link_to project.name, admin_project_path(project)
        end
        column :category
        column :location
        column :size, sortable: :size do |project|
          "#{project.size}m2"
        end
        column 'Creation Date', :created_at
        column :published?
      end
      strong { link_to 'View all Projects', admin_projects_path }
    end

    section 'Recent Comments' do
      table_for ActiveAdminComment.order('created_at desc').limit(5) do |_comment|
        column :author
        column :resource
        column :body
        column 'Creation Date', :created_at
      end
    end
  end # content
end
