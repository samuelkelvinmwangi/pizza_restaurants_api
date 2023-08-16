# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



# creating restaurants
restaurant1 = Restaurant.create(name: "Dominos", address: "Kahawa 24")
restaurant2 = Restaurant.create(name: "PizzaInn", address: "Githurai 44")

# Create pizzas
pizza1 = Pizza.create(name: 'Cheese', ingredients: 'Dough, Tomato Sauce, Cheese')
pizza2 = Pizza.create(name: 'Pepperoni', ingredients: 'Dough, Tomato Sauce, Cheese, Pepperoni')

# Create restaurant pizzas
RestaurantPizza.create(price: 12, pizza: pizza1, restaurant: restaurant1)
RestaurantPizza.create(price: 15, pizza: pizza2, restaurant: restaurant1)
RestaurantPizza.create(price: 10, pizza: pizza1, restaurant: restaurant2)
