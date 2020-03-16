class User < ApplicationRecord
  has_secure_password
  validates :email, :presence => true, :uniqueness => true
  has_many :favorites
  has_many :posts
  has_many :relationships
  validates :user_id, {presence:true}
end
