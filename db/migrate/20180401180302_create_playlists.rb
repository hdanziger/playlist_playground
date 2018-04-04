class CreatePlaylists < ActiveRecord::Migration[5.1]
  def change
    create_table :playlists do |t|
      t.string :title
      t.string :genre
      t.string :img_url, default: "https://cdn.pixabay.com/photo/2016/04/07/22/09/note-1314941_960_720.png"

      t.timestamps
    end
  end
end
