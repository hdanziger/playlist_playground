class PlaylistSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :img_url

  has_many :songs
end
