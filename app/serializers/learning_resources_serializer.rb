class LearningResourcesSerializer
  include JSONAPI::Serializer
  set_id {nil}
  attributes :country, :video, :images
   #:title, :youtube_video_id, :images
end
