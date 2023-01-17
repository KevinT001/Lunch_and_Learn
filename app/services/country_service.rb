class CountryService 
  def self.retrieve_country(name)
    response = conn.get("/v3.1/name/#{name}")
    parsed = JSON.parse(response.body, symbolize_names: true) 
  end

  def self.retrieve_all_countries 
    response = conn.get("v3.1/all")

    parsed = JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn 
    Faraday.new(url: "https://restcountries.com")
  end
end