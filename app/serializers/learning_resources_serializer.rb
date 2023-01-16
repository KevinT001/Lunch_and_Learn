class LearningResourcesSerializer
  include JSONAPI::Serializer
  attributes :id, :video_id, :title, :country 
end
