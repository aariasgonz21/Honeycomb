# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Salon Ex --

Salon.delete_all

coffee_and_cream = Salon.create(name: "Coffee And Cream", price: "$$", location: "Brooklyn, NY", phone_number: "(718) 555-5566", description: "We like our coffee like we like our hair... Black. We specialize in 3b-4c haircuts, braids and twists.")
#
killing_me_softly = Salon.create(name: "Killing Me Softly", price: "$$$", location: "Harlem, NY", phone_number: "(212) 555-8888", description: "Kill and slay your look with us! We specialize in haircuts, braids, dreads, & wash n'gos!")

brendas_hair = Salon.create(name: "Brenda's Hair Salon", price: "$", location: "Jamaica, NY", phone_number: "(718) 555-1212", description: "We've got washing and straightening!")
