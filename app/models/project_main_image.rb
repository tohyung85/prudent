class ProjectMainImage < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  belongs_to :project
  validates :project_id, presence: true, uniqueness: true
end
