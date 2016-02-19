class MovieSerializer < ActiveModel::Serializer
  attributes :id,:title, :description, :thumbnail_url, :image_url, :rating 
  has_many :comments 
end
