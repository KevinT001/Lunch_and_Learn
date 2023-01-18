class User < ApplicationRecord 
  before validation :downcase_email

  validates_presence_of :name, :api_key
  validates_presence_of :email
  validates_uniqueness_of :email, case_sensitive: false

  has_many :favorites

  private 

  def downcase_email 
    if email.present?
      
    end
  end

end