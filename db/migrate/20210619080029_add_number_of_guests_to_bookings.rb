class AddNumberOfGuestsToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :number_of_guests, :integer, null: false
  end
end
