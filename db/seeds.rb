p1 = {
  'songs_attributes': {
    '0': {'title': "Here comes the sun"},
    '1': {'title': "Yellow"},
    '2': {'title': "Mrs. Robinson"},
  },
  'title': 'Todays Top Hits',
  'genre': "pop",
  'img_url': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjHH0kwvEppyYcMm9YS507r83HDv99yqP82a48A7gw4shNzRoy"
}

p2 = {
  'songs_attributes': {
    '0': {'title': "Back to Black"},
    '1': {'title': "Valerie"},
    '2': {'title': "Dreams"},
  },
  'title': 'Slow Jams',
  'genre': "rock",
  'img_url': "https://images-na.ssl-images-amazon.com/images/I/51rttY7a%2B9L.png",
}

p3 = {
  'songs_attributes': {
    '0': {'title': "Mountains"},
    '1': {'title': "Jubel"},
    '2': {'title': "Sand Storm"},
  },
  'title': 'Projects',
  'genre': "mellow",
  'img_url': "https://data.whicdn.com/images/304664148/large.png?t=1515136469",
}

playlists = [p1, p2, p3]
playlists.each do |playlist|
  Playlist.create!(playlist)
end
