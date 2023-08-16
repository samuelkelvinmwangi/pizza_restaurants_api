# README

Pizza Restaurant Tracking API
Welcome to the Pizza Restaurant Tracking API! This API allows you to manage information about pizza restaurants, their pizzas, and associated data. You can retrieve information about restaurants, pizzas, and even create restaurant-pizza relationships.

Table of Contents
-Getting Started
-Endpoints
-GET /restaurants
-GET /restaurants/:id
-DELETE /restaurants/:id
-GET /pizzas
-POST /restaurant_pizzas
-Contributing
-License

Getting Started
To get started with the API, follow these steps:

Clone this repository to your local machine:
bash

git clone <repository-url>
Install the required dependencies:
bash

bundle install
Set up the database by running migrations and seed data:
bash

rails db:migrate
rails db:seed
Start the server:
bash

rails server
Now your API is up and running on http://localhost:3000. You can use any API testing tool to interact with it.

Endpoints

GET /restaurants
Returns a list of all restaurants.

Response:

json
[
  {
    "id": 1,
    "name": "Dominos",
    "address": "Kahawa 24",
    "created_at": "2023-08-16T11:08:42.242Z",
    "updated_at": "2023-08-16T11:08:42.242Z"
  },
  {
    "id": 2,
    "name": "PizzaInn",
    "address": "Githurai 44",
    "created_at": "2023-08-16T11:08:42.246Z",
    "updated_at": "2023-08-16T11:08:42.246Z"
  }
]
GET /restaurants/:id
Returns a restaurant with pizzas by ID.

Response:

json
{
  "id": 1,
  "name": "Dominos",
  "address": "Kahawa 24",
  "created_at": "2023-08-16T11:08:42.242Z",
  "updated_at": "2023-08-16T11:08:42.242Z",
  "pizzas": [
    {
      "id": 1,
      "name": "Cheese",
      "ingredients": "Dough, Tomato Sauce, Cheese"
    },
    {
      "id": 2,
      "name": "Pepperoni",
      "ingredients": "Dough, Tomato Sauce, Cheese, Pepperoni"
    }
  ]
}
DELETE /restaurants/:id
Deletes a restaurant by ID and its associated restaurant-pizza relationships.


GET /pizzas
Returns a list of all pizzas.

Response:

json
[
  {
    "id": 1,
    "name": "Cheese",
    "ingredients": "Dough, Tomato Sauce, Cheese"
  },
  {
    "id": 2,
    "name": "Pepperoni",
    "ingredients": "Dough, Tomato Sauce, Cheese, Pepperoni"
  }
]
POST /restaurant_pizzas
Creates a new restaurant-pizza relationship.

Contributing
Contributions are welcome! Feel free to submit a pull request. and add to the code
so as to make it more functional and more informative while developing and fixing
the errors

License
This project is licensed under the MIT License.