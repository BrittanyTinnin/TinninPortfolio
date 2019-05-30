class Portfolio < ApplicationRecord
  mount_uploader :thumb_image, ImageUploader
  mount_uploader :main_image, ImageUploader

  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title, :body, presence: true
end
