class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :brand
      t.integer :year
      t.string :engine
      t.string :color
      t.string :type

      t.timestamps
    end
  end
end
