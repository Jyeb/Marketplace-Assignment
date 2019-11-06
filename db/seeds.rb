# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.destroy_all
Category.create(name: "Electronics")
Category.create(name: "Clothing")
Category.create(name: "Video Games")
Category.create(name: "Vehicles")
Category.create(name: "Sporting")
categories = [
  {
    name: "Books",
    products: Product.create([
    {
      name: "Book 1",
      price: 50,
      rating: 4,
      description: "placeholder text for book 1",
    },
    {
      name: "Book 2",
      price: 45,
      rating: 3,
      description: "Placeholder text for book 2",
    },
    {
      name: "Book 3",
      price: 400,
      rating: 5,
      description: "Placeholder text for book 3",
    },
    {
      name: "Book 4",
      price: 600,
      rating: 1,
      description: "Placeholder text for book 4",
    },
    ])
  },
]
Category.create(categories)
  