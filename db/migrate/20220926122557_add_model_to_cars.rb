class AddModelToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :model, :string
  end
end
