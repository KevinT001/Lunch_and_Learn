require 'rails_helper'

RSpec.describe Country do 

  xit 'has Attributes' do 
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
  end
end