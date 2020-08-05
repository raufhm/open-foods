# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
foods = Food.create([
  { 
    name: "Quaker Instant",
    image_url: "https://images-na.ssl-images-amazon.com/images/I/91pu1HO5tfL._SL1500_.jpg"
  }, 
  { 
    name: "Tortilla Chips",
    image_url: "https://images-na.ssl-images-amazon.com/images/I/81HqfpMuDQL._SX569_.jpg"
  },
  { 
    name: "Roasted Peanuts",
    image_url: "https://images-na.ssl-images-amazon.com/images/I/71552K6S72L._SL1500_.jpg" 
  }
])

reviews = Review.create([
    {
        title: 'Great food',
        description: 'I had nice food',
        score: 5,
        food: foods.first
    },
    {
        title: 'Bad food',
        description: 'I had weird food',
        score: 1,
        food: foods.first
    }
])
