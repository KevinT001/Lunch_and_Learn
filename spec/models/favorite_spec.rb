require 'rails_helper' 

it { should validate_presence_of :api_key }
it { should validate_presence_of :country }
it { should validate_presence_of :recipe_link }
it { should validate_presence_of :recipe_title }

it { should belong_to :user}