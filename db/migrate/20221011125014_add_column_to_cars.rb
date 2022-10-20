class AddColumnToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :address, :string
  end
end
