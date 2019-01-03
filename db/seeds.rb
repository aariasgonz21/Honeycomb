# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Salon Ex --

Salon.destroy_all
Customer.destroy_all
HairStylist.destroy_all
Hairtype.destroy_all
Services.destroy_all

################################ Salons ##########################################

coffee_and_cream = Salon.create(name: "Coffee And Cream", price: "$$", location: "Brooklyn, NY", phone_number: "(718) 555-5566", description: "We like our coffee like we like our hair... Black. We specialize in 3b-4c haircuts, braids and twists.")
#
killing_me_softly = Salon.create(name: "Killing Me Softly", price: "$$$", location: "Harlem, NY", phone_number: "(212) 555-8888", description: "Kill and slay your look with us! We specialize in haircuts, braids, dreads, & wash n'gos!")

brendas_hair = Salon.create(name: "Brenda's Hair Salon", price: "$", location: "Jamaica, NY", phone_number: "(718) 555-1212", description: "We've got washing and straightening!")

############################## Hair Stylists ###################################

lori = HairStylist.create(name: "Lori Styles", specialty: "Haircuts, wash n' go", years_of_experience: "3", salon: coffee_and_cream)

james = HairStylist.create(name: "James Hughes", specialty: "Twists, Haircuts", years_of_experience: "7", salon: coffee_and_cream)

layla = HairStylist.create(name: "Layla Jones", specialty: "Braids, Twists", years_of_experience: "5", salon: coffee_and_cream)

milan = HairStylist.create(name: "Milan Sacher", specialty: "haircuts", years_of_experience: "1", salon: brendas_hair)
#
jarrian = HairStylist.create(name: "Jarrian McLean", specialty: "dreads, wash n' gos", years_of_experience: "4", salon: brendas_hair)
#
imani = HairStylist.create(name: "Imani Josephs", specialty: "twists, haircuts", years_of_experience: "4", salon: brendas_hair)
#
latoya = HairStylist.create(name: "LaToya Jackson", specialty: "straightening, haircuts", years_of_experience: "6", salon: killing_me_softly)
#
michael = HairStylist.create(name: "Michael Jackson", specialty: "haircuts, braids", years_of_experience: "2", salon: killing_me_softly)
#
janet = HairStylist.create(name: "Janet Jackson", specialty: "bantu knots, senegalese twists", years_of_experience: "7", salon: killing_me_softly)

############################## Hair Types ###################################

two_a = Hairtype.create(name: "2a", description: "Your waves are fine and thin with a loose, tousled texture.")
two_b = Hairtype.create(name: "2b", description: "Your hair is mostly straight at the roots and falls into more defined S-shaped waves from the mid-lengths to the ends. It is a medium texture with some frizz at the crown.")
two_c = Hairtype.create(name: "2c", description: "Your waves are more defined and start at the roots, than with curls and ringlets. This texture is typically thick or coarse, and is prone to frizzing.")
three_a = Hairtype.create(name: "3a", description: "You have big, loose curls and spirals similar in circumference to a piece of thick, sidewalk chalk. Your curls tend to be shiny, with a well-defined S-shape.")
three_b = Hairtype.create(name: "3b", description: "Your springy curls can vary from ringlets to corkscrews. They are voluminous and have a circumference similar to a Sharpie marker. Type 3b hair tends to be coarse and dense.")
three_c = Hairtype.create(name: "3c", description: "his often is referred to as curly-coily and tends to be very dense, tightly packed corkscrews that are the circumference of a pencil or a straw. Type 3c hair tends to experience the most volume, but also the most shrinkage of curls.")
four_a = Hairtype.create(name: "4a", description: "Your dense, springy coils are either wiry or fine, and have the circumference of a crochet needle. They are tightly coiled, with a visible S pattern.")
four_b = Hairtype.create(name: "4b", description: "Instead of curling or coiling, your hair bends in sharp angles like the letter Z. The curl is tighter and less defined - about the circumference of a pen - with strands that range from fine and thin to wiry and coarse.")
four_c = Hairtype.create(name: "4c", description: "Your densely packed hair is similar to a 4b, but experiences less definition and more shrinkage. The tightly coiled strand texture ranges from super fine, thin and soft to wiry and coarse. It is very delicate.")

############################## Customers ###################################

aj = Customer.create(name: "AJ Baskett", location: "Queens, NY", hairtype: three_a, email: "aj12345@gmail.com", password: "foobar", password_confirmation: "foobar")
ana = Customer.create(name: "Ana Arias", location: "Queens, NY", hairtype: three_b, email: "ananasdotjs@gmail.com", password: "ananasjs", password_confirmation: "ananasjs")
bri = Customer.create(name: "Briana Arnold", location: "Bronx, NY", hairtype: four_c, email: "sweetiepienyc@gmail.com", password: "foobar", password_confirmation: "foobar")
zakiya = Customer.create(name: "Zakiya Sims", location: "Brooklyn, NY", hairtype: four_c, email: "birthday777@gmail.com", password: "foobar", password_confirmation: "foobar")
giselle = Customer.create(name: "Giselle Santiago", location: "Harlem, NY", hairtype: three_a, email: "curlygirl989@gmail.com", password: "foobar", password_confirmation: "foobar")

############################## Services Offered ################################

wash_n_go = Service.create(name: "Wash N Go", price: 25, hair_stylist: lori)

box_braids = Service.create(name: "Box Braids", price: 85, hair_stylist: layla)

shingle_n_go = Service.create(name: "Shingle N Go", price: 27, hair_stylist: lori)

weave = Service.create(name: "Sew in Weave", price: 90, hair_stylist: lori)

wash_n_go2 = Service.create(name: "Wash N Go", price: 25, hair_stylist: james)

marley_twists = Service.create(name: "Marley Twists", price: 90, hair_stylist: james)

haircut = Service.create(name: "Curly Cut", price: 25, hair_stylist: imani)

blowout = Service.create(name: "Blowout", price: 30, hair_stylist: milan)

# haircut2 = Service.create(name: "", price: , hair_stylist: )

dreads = Service.create(name: "Dreadlocs", price: 150, hair_stylist: jarrian)

# senegalese_twists = Service.create(name: "", price: , hair_stylist: )
# haircut3 = Service.create(name: "", price: , hair_stylist: )
# shingle_n_go2 = Service.create(name: "", price: , hair_stylist: )
