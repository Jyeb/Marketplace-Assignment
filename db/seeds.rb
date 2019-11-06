# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.destroy_all
Category.create(name: "Books")
Category.create(name: "Electronics")
Category.create(name: "Clothing")
Category.create(name: "Video Games")
Category.create(name: "Vehicles")
Category.create(name: "Sporting")
# categories = [
#   {
#     name: "Books"
#     products: Product.create([
#       {
#       name: "",
#       price: ,
#       rating: ,
#       description: "",
#     },
#     {
#       name: "",
#       price: ,
#       rating: ,
#       description: "",
#     },
#     {
#       name: "",
#       price: ,
#       rating: ,
#       description: "",
#     },
#     {
#       name: "",
#       price: ,
#       rating: ,
#       description: "",
#     },
#     ]),
#   }
#   {
#     name: "Books"
#     products: Product.create([
#       {
#       name: "",
#       price: ,
#       rating: ,
#       description: "",
#     },
#     {
#       name: "",
#       price: ,
#       rating: ,
#       description: "",
#     },
#     {
#       name: "",
#       price: ,
#       rating: ,
#       description: "",
#     },
#     {
#       name: "",
#       price: ,
#       rating: ,
#       description: "",
#     },
#     ]),
#   }
#   {
#     name: "Books"
#     products: Product.create([
#       {
#       name: "",
#       price: ,
#       rating: ,
#       description: "",
#     },
#     {
#       name: "",
#       price: ,
#       rating: ,
#       description: "",
#     },
#     {
#       name: "",
#       price: ,
#       rating: ,
#       description: "",
#     },
#     {
#       name: "",
#       price: ,
#       rating: ,
#       description: "",
#     },
#     ]),
#   }
# ]