class LearningResourcesSerializer
  include JSONAPI::Serializer
  # set_id {nil}
  attributes :id, :video_id, :title, :country, :url, :alt_tag 
end
