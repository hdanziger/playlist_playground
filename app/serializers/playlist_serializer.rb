class PlaylistSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :img_url, :likes

  has_many :songs
end
