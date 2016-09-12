class SlideshowImage < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  validates :photo, presence: true
  validates :description, presence: true
  validates :row_order, presence: true
end
