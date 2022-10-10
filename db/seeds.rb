puts "Seeding data started, please wait..."
#Hero seed data
Hero.create(name: "Kamala Khan", super_name: "Ms. Marvel")
Hero.create(name: "Doreen Green", super_name: "Squirrel Girl")
Hero.create(name: "Gwen Stacy", super_name: "Spider-Gwen")

#Power seed data
Power.create(name: "super strength", description: "gives the wielder super-human strengths")
Power.create(name: "flight", description: "gives the wielder the ability to fly through the skies at supersonic speed")


#HeroPower seed data
HeroPower.create(strength: "Strong", hero_id: 1, power_id: 1)
HeroPower.create(strength: "Weak", hero_id: 2, power_id: 2)
HeroPower.create(strength: "Average", hero_id: 1, power_id: 2)
HeroPower.create(strength: "Strong", hero_id: 2, power_id: 1)

puts "Seeding data completed successfully!"
