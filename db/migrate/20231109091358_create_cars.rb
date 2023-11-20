class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :model
      t.string :description
      t.string :image
      t.decimal :price_per_day
      t.integer :seating_capacity

      t.timestamps
    end
  end
end
