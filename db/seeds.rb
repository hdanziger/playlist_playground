# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Playlist.create( title: 'Todays Top Hits', genre: "pop", img_url: "")
Playlist.create( title: 'Slow Jams', genre: "rock", img_url: "")
Song.create( title: "Here comes the sun", artist: "The Beatles", playlist_id: 1)
Song.create( title: "Sweet Home Alabama", artist: "Lynyrd Skynyrd", playlist_id: 1)
Song.create( title: "Yellow", artist: "Coldplay", playlist_id: 2)
