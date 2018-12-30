# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Salon Ex --

Salon.delete_all
HairStylist.delete_all

coffee_and_cream = Salon.create(name: "Coffee And Cream", price: "$$", location: "Brooklyn, NY", phone_number: "(718) 555-5566", description: "We like our coffee like we like our hair... Black. We specialize in 3b-4c haircuts, braids and twists.")
#
killing_me_softly = Salon.create(name: "Killing Me Softly", price: "$$$", location: "Harlem, NY", phone_number: "(212) 555-8888", description: "Kill and slay your look with us! We specialize in haircuts, braids, dreads, & wash n'gos!")

brendas_hair = Salon.create(name: "Brenda's Hair Salon", price: "$", location: "Jamaica, NY", phone_number: "(718) 555-1212", description: "We've got washing and straightening!")

lori = HairStylist.create(name: "Lori Styles", specialty: "Haircuts, wash n' go", years_of_experience: "3", salon_id: 1)

james = HairStylist.create(name: "James Hughes", specialty: "Twists, Haircuts", years_of_experience: "7", salon_id: 1)

layla = HairStylist.create(name: "Layla Jones", specialty: "Braids, Twists", years_of_experience: "5", salon_id: 1)

milan = HairStylist.create(name: "Milan Sacher", specialty: "haircuts", years_of_experience: "1", salon_id: 2)
#
jarrian = HairStylist.create(name: "Jarrian McLean", specialty: "dreads, wash n' gos", years_of_experience: "4", salon_id: 2)
#
imani = HairStylist.create(name: "Imani Josephs", specialty: "twists, haircuts", years_of_experience: "", salon_id: 2)
#
latoya = HairStylist.create(name: "LaToya Jackson", specialty: "straightening, haircuts", years_of_experience: "6", salon_id: 3)
#
michael = HairStylist.create(name: "Michael Jackson", specialty: "haircuts, braids", years_of_experience: "2", salon_id: 3)
#
janet = HairStylist.create(name: "Janet Jackson", specialty: "bantu knots, senegalese twists", years_of_experience: "7", salon_id: 3)

aj = Customer.create(name: "AJ Baskett", hairtype: "3a", location: "Queens, NY")
ana = Customer.create(name: "Ana Arias", hairtype: "3b", location: "Queens, NY")
bri = Customer.create(name: "Briana Arnold", hairtype: "4b", location: "Bronx, NY")
zakiya = Customer.create(name: "Zakiya Simms", hairtype: "4c", location: "Brooklyn, NY")
giselle = Customer.create(name: "Giselle Santiago", hairtype: "3a", location: "Harlem, NY")
