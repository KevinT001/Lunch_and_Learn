require 'rails_helper'

RSpec.describe 'recipe index' do 

  describe 'can connect to request endpoint successfully' do 
    it 'can return a JSON response' do 
      country = "Thailand" 

      get "/api/v1/recipes?country=#{country}"

      expect(response).to be_successful
      
    end
  end
end