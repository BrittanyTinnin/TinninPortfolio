class User < ApplicationRecord
  has_many :portfolios

  has_secure_password

  validates :email, presence: true
  validates :email, uniqueness: { case_sensitive: false }
  validates :password, length: { in: 6..100 } 

end
