class Project < ActiveRecord::Base
  scope :published, -> { where(published?: true) }
  scope :unpublished, -> { where(published?: false) }
  belongs_to :category
  has_one :project_main_image
end
