class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :restaurant_name
      t.string :cuisine
      t.references :user

      t.timestamps
    end
  end
end
