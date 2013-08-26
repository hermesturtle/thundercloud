# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

killer_i = Artist.create(name: "Killer I", description: "Ghostly electronic music from a parallel dimension.")
killer_i.albums << Album.create(name: "Phantasm", description: "First album.")
