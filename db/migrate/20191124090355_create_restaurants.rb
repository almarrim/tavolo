class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.integer :user_id
      t.string :img
      t.string :name

      t.timestamps
    end
  end
end
