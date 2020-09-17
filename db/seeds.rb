# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Song.destroy_all
Artist.destroy_all
Genre.destroy_all

Song.create(
    name: "Mob",
    artist: Artist.find_or_create_by(name: "Bob"),
    genre: Genre.find_or_create_by(name: "Boom Bob")
)

Song.create(
    name: "Mob 2",
    artist: Artist.find_or_create_by(name: "Bob"),
    genre: Genre.find_or_create_by(name: "Neo Bob")
)