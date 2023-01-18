class FavoritesSerializer
  include JSONAPI::Serializer
  attributes :country, :recipe_title, :recipe_link, :api_key
end
