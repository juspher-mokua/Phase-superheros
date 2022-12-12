# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Start Seeding Heroes here ..."
Hero.create!(
  [
    {
      name: "Peter Parker",
      super_name: "Spider-Man",
    },

    {
      name: "Steve Rogers",
      super_name: "Captain America",
    },

    {
      name: "Bruce Banner",
      super_name: "Hulk",
    },]
)

Power.create!(
  [
    {
      name: "Spidey ",
      description: "gives the wielder super strenght and quickness",
    },

    {
      name: "Captain Fantastic ",
      description: "gives the wielder super strenght  ",
    },

    {
      name: "Green Beast ",
      description: "allows the person to shift into a big super stong human",
    },

  ]
)

puts "End of Seeding...."