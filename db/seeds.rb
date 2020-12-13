# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.destroy_all 
Genre.destroy_all 
Song.destroy_all

art1 = Artist.create(name: "artist1", bio: "artist1 bio")
art2 = Artist.create(name: "artist2", bio: "artist2 bio")

g1 = Genre.create(name: "Rock")
g2 = Genre.create(name: "pop")

Song.create(name: "song1", artist_id: art2.id, genre_id: g1.id)
Song.create(name: "song2", artist_id: art1.id, genre_id: g2.id)
Song.create(name: "song3", artist_id: art1.id, genre_id: g1.id)
Song.create(name: "song4", artist_id: art2.id, genre_id: g2.id)