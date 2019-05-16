class Portfolio < ApplicationRecord
  mount_uploader :thumb_image, ImageUploader
  mount_uploader :main_image, ImageUploader


  validates :title, :body, presence: true
end
