class CountryFacade

  def self.all_countries
    countries = CountryService.retrieve_all_countries
    countries.map do |country|
      Country.new(country)
    end
  end

  def self.random_country
    country = CountryFacade.all_countries 
    country.sample
  end

   
  def self.user_chosen_country(name)
    single_country = CountryService.retrieve_country(name)
    single_country.map do |info|
      Country.new(info)
    end
end