class User < ApplicationRecord 
  validates_presence_of :name, :api_key
  validates_presence_of :email, uniqueness: true
end