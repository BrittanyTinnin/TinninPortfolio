class Portfolio < ApplicationRecord
  mount_uploader :thumb_image, ImageUploader
  mount_uploader :video, VideoUploader


  validates :title, :body, presence: true
end
