class User < ApplicationRecord
  has_many :recipes 
  validates_presence_of :username
  validates_uniqueness_of :username
  has_secure_password
end
