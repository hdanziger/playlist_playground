class AddLikesToPlaylists < ActiveRecord::Migration[5.1]
  def change
    add_column :playlists, :likes, :integer, :default => 0
  end
end
