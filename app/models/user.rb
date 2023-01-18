class User < ApplicationRecord 
  validates_presence_of :name, :api_key
  validates_presence_of :email
  validates_uniqueness_of :email, case_sensitive: false
end