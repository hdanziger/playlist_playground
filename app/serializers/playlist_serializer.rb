class SongSerializer < ActiveModel::SongSerializer
  attributes :id, :title, :genre, :img_url

  has_many :songs
end
