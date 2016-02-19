json.array!(@movies) do |movie|
  json.extract! movie, :id, :title, :description, :thumbnail_url, :image_url, :rating
  json.url movie_url(movie, format: :json)
end
