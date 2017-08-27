# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
(1..10).each do |i|
   email = "example-#{i+1}@example.com"
  User.create!(email: email, challenge_id: 1, password: "password", password_confirmation: "password")
end


challenge_array = [
  "Draw a self portrait",
  "Create a decoration for your house",
  "Cook someone else/yourself a meal you've never made before",
  "Do 40 pushups and 40 situps",
  "Go for a walk somewhere new, at least 2 miles",
  "Read the first chapter of a new book",
  "Eat 3 different colors of fruit or veg",
  "Turn off your mobile phone until 5:00pm",
  "Learn a simple magic trick, and fool someone",
  "Drink 7 large glasses of water",
  "Learn Hello, Goodbye, and Thank You in a new language",
  "Eat a food you hate",
  "Have a conversation with a stranger",
  "Watch a black and white film",
  "Watch a silent movie",
  "Do 30 minutes of yoga",
  "Make an origami crane",
  "Throw away or give away 3 things you don't use anymore",
  "Bake a cake",
  "Write a letter to yourself, in an envelope addressed to 1 year from now",
  "Try a food you've never tasted before",
  
]

challenge_array.each do |ch|
  Challenge.create(description: ch)
end

User.set_challenge
