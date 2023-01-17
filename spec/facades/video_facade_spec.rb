require 'rails_helper'

RSpec.describe 'VideoFacade' do 
  it '.video_results_info(country)', :vcr do
    country = "Laos"
    video_results = VideoFacade.video_results_info(country)

    expect(video_results).to be_an Array 
    expect(video_results.title).to eq("A Super Quick History of Laos")
    expect(video_results.title).to be_a String
    expect(video_results.video_id).to eq("uw8hjVqxMXw")
    expect(video_results.video_id).to be_a String
  end
end 