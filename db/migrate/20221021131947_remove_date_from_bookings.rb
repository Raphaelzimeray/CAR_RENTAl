class RemoveDateFromBookings < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookings, :date
  end
end
