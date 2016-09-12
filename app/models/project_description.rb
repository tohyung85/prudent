class ProjectDescription < ActiveRecord::Base
  belongs_to :project
  validates :project_id, presence: true
  validates :contents, presence: true
end
