class RecipeService
  def self.conn 

    Faraday.new(url: "https://api.edamam.com") do |f|
      f.params['app_id'] = ENV['edamam_id']
      f.params['app_key'] = ENV['edamam_key']
    end
  end
  
  def self.retrieve_recipes(country)
    response = conn.get("/api/recipes/v2?type=public&q=#{country}")
    parsed = JSON.parse(response.body, symbolize_names: true)
 
  end
end