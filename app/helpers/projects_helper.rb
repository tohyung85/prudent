module ProjectsHelper
  def render_project_box(project)
    link_to(project_path(project), class: 'project-box') do
      concat image_tag project.project_main_image.photo.thumb, class: 'project-index-thumb' if project.project_main_image.present?
      concat(content_tag(:span, class: 'caption') do
        concat(content_tag(:h3) do
          concat project.name
          concat(content_tag(:p, '___', class: 'underbar'))
        end)
        concat content_tag(:p, project.location)
      end)
    end
  end
end
