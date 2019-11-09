# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.destroy_all
Product.destroy_all
User.destroy_all

books = Category.create([
  {
  name: "Books",
  }
])
electronics = Category.create([
  {
  name: "Electronics",
  }
])
sporting = Category.create([
  {
  name: "Sporting",
  }
])
clothing = Category.create([
  {
  name: "Clothing",
  }
])
vehicles = Category.create([
  {
  name: "Vehicles",
  }
])
user = [
  {
    name: "first User",
    email: "first@example.com",
    password: "foobar",
    password_confirmation: "foobar",
    products: Product.create([
      {
        name: "First book",
        price: 50, 
        rating: 5,
        description: "Placeholder text for book description",
        categories: books,
      },
      {
        name: "Second book",
        price: 40, 
        rating: 5,
        description: "Placeholder text for book description",
        categories: books,
      },
      {
        name: "third book",
        price: 40, 
        rating: 5,
        description: "Placeholder text for book description",
        categories: books,
      },
      {
        name: "fourth book",
        price: 40, 
        rating: 5,
        description: "Placeholder text for book description",
        categories: books,
      },
    ])
  },
]

user2 = [
  {
    name: "second User",
    email: "second@example.com",
    password: "foobar",
    password_confirmation: "foobar",
    products: Product.create([
      {
        name: "First phone",
        price: 50, 
        rating: 5,
        description: "Placeholder text for Electronics description",
        categories: electronics,
      },
      {
        name: "Second phone",
        price: 40, 
        rating: 5,
        description: "Placeholder text for Electronics description",
        categories: electronics,
      },
      {
        name: "third phone",
        price: 40, 
        rating: 5,
        description: "Placeholder text for Electronics description",
        categories: electronics,
      },
      {
        name: "fourth phone",
        price: 40, 
        rating: 5,
        description: "Placeholder text for Electronics description",
        categories: electronics,
      },
    ])
  },
]

user3 = [
  {
    name: "Third User",
    email: "third@example.com",
    password: "foobar",
    password_confirmation: "foobar",
    products: Product.create([
      {
        name: "racquet",
        price: 50, 
        rating: 5,
        description: "Placeholder text for sporting description",
        categories: sporting,
      },
      {
        name: "football",
        price: 40, 
        rating: 5,
        description: "Placeholder text for sporting description",
        categories: sporting,
      },
      {
        name: "Cricket Bat",
        price: 40, 
        rating: 5,
        description: "Placeholder text for sporting description",
        categories: sporting,
      },
      {
        name: "Rugby Ball",
        price: 40, 
        rating: 5,
        description: "Placeholder text for book4 description",
        categories: sporting,
      },
    ])
  },
]
user4 = [
  {
    name: "fourth User",
    email: "fourth@example.com",
    password: "foobar",
    password_confirmation: "foobar",
    products: Product.create([
      {
        name: "Shirt",
        price: 400, 
        rating: 4,
        description: "Placeholder text for book description",
        categories: clothing,
      },
      {
        name: "Pants",
        price: 65, 
        rating: 4,
        description: "Placeholder text for book2 description",
        categories: clothing,
      },
      {
        name: "Jacket",
        price: 30, 
        rating: 4,
        description: "Placeholder text for book3 description",
        categories: clothing,
      },
      {
        name: "Shorts",
        price: 200, 
        rating: 4,
        description: "Placeholder text for book4 description",
        categories: clothing,
      },
    ])
  },
]

user5 = [
  {
    name: "fifth User",
    email: "fifth@example.com",
    password: "foobar",
    password_confirmation: "foobar",
    products: Product.create([
      {
        name: "car",
        price: 50, 
        rating: 5,
        description: "Placeholder text for sporting description",
        categories: vehicles,
      },
      {
        name: "car2",
        price: 40, 
        rating: 5,
        description: "Placeholder text for sporting description",
        categories: vehicles,
      },
      {
        name: "MotorBike",
        price: 40, 
        rating: 5,
        description: "Placeholder text for sporting description",
        categories: vehicles,
      },
      {
        name: "Truck",
        price: 40, 
        rating: 5,
        description: "Placeholder text for book4 description",
        categories: vehicles,
      },
    ])
  },
]



User.create(user)
User.create(user2)
User.create(user3)
User.create(user4)
User.create(user5)