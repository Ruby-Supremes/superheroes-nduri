puts "Seeding data started, please wait..."
#Hero seed data
Hero.create(name: "Kamala Khan", super_name: "Ms. Marvel")
Hero.create(name: "Doreen Green", super_name: "Squirrel Girl")
Hero.create(name: "Gwen Stacy", super_name: "Spider-Gwen")

#Power seed data
Hero.create(name: "super strength", description: "gives the wielder super-human strengths")
Hero.create(name: "flight", description: "gives the wielder the ability to fly through the skies at supersonic speed")

#HeroPower seed data
# HeroPower.create(name: "super strength", description: "gives the wielder super-human strengths")


puts "Seeding data completed successfully!"
