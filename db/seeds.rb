# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Barn.create(name: "Peaceful Acres", number_of_paddocks: 5, number_of_stalls: 15, address:"21 Peace Farm Rd, Brewster, NY 10509", board_cost: 1000, amenities:["Indoor Arena", "Outdoor Arena", "Heated Wash Stall", "Training", "Lessons"], images:{main:"https://www.dcbuilding.com/wp-content/uploads/2017/02/westlinn-cover.jpg?id=2356", indoor_arena: "http://equinefacilitydesign.com/wp-content/uploads/2015/04/Blog-FI-04.30.15_CHoose-your-riding-arena-footing-1160x390.jpg", outdoor_arena: "http://www.criswoodfarm2.com/images/outdoor-horse-arena-northern-va.jpg.jpg", paddocks: "http://idealtrainingcentre.com/theme/grassy%20paddocks.JPG"})
Barn.create(name: "Farmingdale Stables", number_of_paddocks: 6, number_of_stalls: 12, address:"21 Farmingdale Rd, Blacksburg, VA 24060", board_cost: 400, amenities:["Indoor Arena", "Outdoor Arena", "Outdoor Wash Stall", "Training", "Lessons", "Trail Access"], images:{main:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkWB9OLfWxgdF5HeAiL8nkyN_EzLeNGTKw6w-nIvK3npgQn6wFqQ", indoor_arena: "http://equinefacilitydesign.com/wp-content/uploads/2015/04/Blog-FI-04.30.15_CHoose-your-riding-arena-footing-1160x390.jpg", outdoor_arena: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS34fLrJZycsuU6BWxAGtUkUOliz3K2S5tDornrUy63AIe6RL5tzA", paddocks: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTC0_wsgajUX_QiZ7M4ySm3yZU4N6O9QFJmnU3olAf0SDTepH3Q6A"})
Stall.create(barn_id: 1, stall_number: 1)
Stall.create(barn_id: 1, stall_number: 2)
Paddock.create(barn_id: 1, capacity: 2)
Paddock.create(barn_id: 1, capacity: 2)
Stall.create(barn_id: 2, stall_number: 1)
Stall.create(barn_id: 2, stall_number: 2)
Paddock.create(barn_id: 2, capacity: 2)
Paddock.create(barn_id: 2, capacity: 10)
Vet.create(name: "Monika Calitri", practice_name:"Seacoast Equine", phone_number: "603-987-0987", pager_number: "603-234-5678", address:"The Seacoast Equine truck")
Farrier.create(name: "Teri Sullivan", practice_name:"Bog Iron", phone_number: "603-834-3459", pager_number: "603-921-0743", address:"Somewhere in Maine")
User.create(barn_id: 1, name: "Shawna", is_manager: true, is_employee: true, email:"owner@example.com", password: "123", password_confirmation: "123", emergency_contact: "John, husband", phone_number: "540-867-5309")
User.create(barn_id: 1, name: "Taylor", is_employee: true, email:"employee@example.com", password: "123", password_confirmation: "123", emergency_contact: "Barb, mother", phone_number: "603-867-5309")
User.create(barn_id: 1, name: "Linda", email:"client@example.com", password: "123", password_confirmation: "123", emergency_contact: "Wings, horse", phone_number: "978-867-5309")
User.create(barn_id: 2, name: "Patrizia", is_manager: true, is_employee: true, email:"owner@farm.com", password: "123", password_confirmation: "123", emergency_contact: "John, husband", phone_number: "540-867-5309")
User.create(barn_id: 2, name: "Ashley", is_employee: true, email:"employee@farm.com", password: "123", password_confirmation: "123", emergency_contact: "Barb, mother", phone_number: "603-867-5309")
User.create(barn_id: 2, name: "Tammy", email:"client@farm.com", password: "123", password_confirmation: "123", emergency_contact: "Wings, horse", phone_number: "978-867-5309")
Horse.create(stall_id: 1,
  paddock_id: 1,
  tack:{saddle: "Black Custom Saddlery with White Piping", bridle: "Double with rubber reins", saddle_pads: "labeled with LC", special_equipment: "lambskin half pad"},
  supplements:["vitamin_e: 5cc", "biotin: 2 scoops"],
  blankets: {below_60: {type:"sheet", color:"orange"}, below_40:{type:"sheet", color:"orange"}, below_30:{type:"medium",color:"light blue with pink trim"}, below_20:{type:"heavy", color:"black with purple trim"}},
  name: "Wing Dings",
  birth_year: 1999,
  user_id: 3,
  vet_id: 1,
  farrier_id: 1,
  image: "https://dressagetoday.com/.image/t_share/MTQ0NzkwODIyMTQ2OTQyNjEx/dt-01-dressage-position-shannon-peters.png"
)
Horse.create(stall_id: 2,
  paddock_id: 2,
  tack:{saddle: "Black Lauriche", bridle: "Snaffle with rubber reins", saddle_pads: "labeled with TD", special_equipment:""},
  supplements:["vitamin_e: 5cc", "biotin: 2 scoops"],
  blankets: {below_60: {type:"sheet", color:"purple"}, below_40:{type:"sheet", color:"purple"}, below_30:{type:"medium",color:"light blue with grey trim"}, below_20:{type:"heavy", color:"black"}},
  name: "Naughty Pony",
  birth_year: 2006,
  user_id: 2,
  vet_id: 1,
  farrier_id: 1,
  image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIeFLqlhrWg2RDhjf8CDTknb8SLH4lWzoSXevi2m8_3SiDEe2eOQ"
)
