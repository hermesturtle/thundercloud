killer_i = Artist.create(name: "Killer I", description: "Ghostly electronic music from a parallel dimension.")
killer_i.albums << Album.create(name: "Phantasm", description: "First album.")

me_lacey_flowers = Artist.create(name: "Me Lacey Flowers", description: "Psychedelic future dream jazz.")

evan_hemsley = Artist.create(name: "Evan Hemsley", description: "Noise from the popocalypse.")
evan_hemsley.albums << Album.create(name: "Eroder", description: "Stuff.")

evan_admin = User.create(email: "evan@thundercloudrecords.com", password: ENV["EVAN_PASSWORD"])
evan_admin.add_role(:admin)
