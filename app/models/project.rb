class Project < ActiveRecord::Base
  scope :published, -> { where(published?: true) }
  scope :unpublished, -> { where(published?: false) }
  belongs_to :category
  has_one :project_main_image
  has_many :project_gallery_images
  has_many :project_descriptions
  accepts_nested_attributes_for :project_descriptions, allow_destroy: true
  accepts_nested_attributes_for :project_main_image, allow_destroy: true
  accepts_nested_attributes_for :project_gallery_images, allow_destroy: true
end
