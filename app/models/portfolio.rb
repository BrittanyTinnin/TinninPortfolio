class Portfolio < ApplicationRecord

  validates :title, :body, :video, :thumb_image, presence: true
end
