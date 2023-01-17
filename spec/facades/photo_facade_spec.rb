require 'rails_helper'

RSpec.describe 'PhotoFacade' do 
  it '.photo_results(country)', :vcr do 
    photos = PhotoFacade.photo_results("Laos")
    
    expect(photos).to be_a Array
    expect(photos.count).to eq(10)
    expect(photos.first.alt_tag).to eq("green trees near body of water during daytime")
    expect(photos.first).to be_an_instance_of(Photo)
    expect(photos.first.alt_tag).to be_a String
    expect(photos.first.url).to be_a String
    results = "https://images.unsplash.com/photo-1606064195579-a48c728cec35?ixid=MnwzOTk4NTN8MHwxfHNlYXJjaHwxfHxMYW9zfGVufDB8fHx8MTY3MzkyNjQ2Mw&ixlib=rb-4.0.3"
    expect(photos.first.url).to eq(results)
  end
end