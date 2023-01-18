class User < ApplicationRecord 
  validates_presence_of :name, :api_key
  validates_presence_of :email, uniqueness: true
  before_create
  def generate_api_key 

  end
end