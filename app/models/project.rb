class Project < ActiveRecord::Base
  scope :published, -> { where(published?: true) }
  scope :unpublished, -> { where(published?: false) }
  belongs_to :category
  has_one :project_main_image
  has_many :project_gallery_images
  has_many :project_descriptions
end
