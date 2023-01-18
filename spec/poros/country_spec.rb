require 'rails_helper'

RSpec.describe Country do 

  it 'has Attributes' do 
    attributes = {
                          "name": {
                              "common": "Cook Islands",
                              "official": "Cook Islands",
                              "nativeName": {
                                  "eng": {
                                      "official": "Cook Islands",
                                      "common": "Cook Islands"
                                  },
                                  "rar": {
                                      "official": "Kūki 'Āirani",
                                      "common": "Kūki 'Āirani"
                                  }
                              }
                          }
                        }
    sample_country = Country.new(attributes)
                      
    expect(sample_country).to be_a(Country)
    expect(sample_country.name).to eq("Cook Islands")   
    # expect(sample_country[:name]).to have_key(:common)
    # expect(sample_country[:name]).to have_key(:official)
    # expect(sample_country[:name]).to have_key(:nativeName)
    # expect(sample_country[:name][:nativeName]).to have_key(:eng)
    # expect(sample_country[:name][:nativeName][:eng]).to be a Hash
  end
end