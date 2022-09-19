class RenameTypeToCars < ActiveRecord::Migration[6.1]
  def change
    rename_column :cars, :type, :car_type
  end
end
