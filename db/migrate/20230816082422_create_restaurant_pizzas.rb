class CreateRestaurantPizzas < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurant_pizzas do |t|
      t.decimal :price
      t.references :pizza, foreign_key: true
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
