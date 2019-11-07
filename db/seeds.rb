# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.destroy_all
Product.destroy_all
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
  {
    name: "Electronics",
    products: Product.create([
    {
      name: "phone 1",
      price: 50,
      rating: 4,
      description: "placeholder text for phone 1",
    },
    {
      name: "phone 2",
      price: 45,
      rating: 3,
      description: "Placeholder text for phone 2",
    },
    {
      name: "phone 3",
      price: 400,
      rating: 5,
      description: "Placeholder text for phone 3",
    },
    {
      name: "phone 4",
      price: 600,
      rating: 1,
      description: "Placeholder text for phone 4",
    },
    ])
  },
  {
    name: "Clothing",
    products: Product.create([
    {
      name: "shirt 1",
      price: 50,
      rating: 4,
      description: "placeholder text for shirt 1",
    },
    {
      name: "shirt 2",
      price: 45,
      rating: 3,
      description: "Placeholder text for shirt 2",
    },
    {
      name: "shirt 3",
      price: 400,
      rating: 5,
      description: "Placeholder text for shirt 3",
    },
    {
      name: "shirt 4",
      price: 600,
      rating: 1,
      description: "Placeholder text for shirt 4",
    },
    ])
  },
  {
    name: "Vehicles",
    products: Product.create([
    {
      name: "car 1",
      price: 50,
      rating: 4,
      description: "placeholder text for car 1",
    },
    {
      name: "car 2",
      price: 45,
      rating: 3,
      description: "Placeholder text for car 2",
    },
    {
      name: "car 3",
      price: 400,
      rating: 5,
      description: "Placeholder text for car 3",
    },
    {
      name: "car 4",
      price: 600,
      rating: 1,
      description: "Placeholder text for car 4",
    },
    ])
  },
]
Category.create(categories)
  