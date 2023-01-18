# require 'rails_helper'

# RSpec.describe 'Photo Poros' do 
#   before :each do 
#     @attributes = { :results =>
#                     {  :alt_tag => "This is a description", 
#                        :raw => "www.photo.com"
#                     }
#                   }
                  
#                 end
#                 @photo_info = Photo.new(@attributes)

#   it 'exist' do 
#     expect(@photo_info).to be_an_instance_of Photo
#   end

#   it 'it has attributes' do 
#     expect(@photo_info.first.alt_tag).to eq("This is a description")
#     expect(@photo_info.first.alt_tag).to be_a String
#     expect(@photo_info).to be_an Array
#     expect(@photo_info.first.url).to be_a String
#     expect(@photo_info.first.url).to eq("www.photo.com")
#   end
# end