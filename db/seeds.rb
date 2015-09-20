Rake::Task['db:reset'].invoke

User.create!(name: "Drewdulz Warkentin", email: "drew@gmail.com", password: "hackthenorth", password_confirmation: "hackthenorth", phone_number: "5196163739")
User.create!(name: "Appdul Hamdy", email: "abdul@gmail.com", password: "hackthenorth", password_confirmation: "hackthenorth", phone_number: "6474473576")
User.create!(name: "TheRails Shome", email: "arumoy@gmail.com", password: "hackthenorth", password_confirmation: "hackthenorth", phone_number: "6475319974")

User.first.events.create!(name: "Soccer with Dave", location: "Waterloo park, Waterloo, ON", type: "Soccer")

User.second.events.create!(name: "Extreme Ultimate", location: "Warrior field, Waterloo, ON", type: "Frisbee")
User.last.events.create!(name: "Pickup Football", location: "Victoria park, Waterloo, ON", type: "Football")
