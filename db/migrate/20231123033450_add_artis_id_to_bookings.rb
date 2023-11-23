class AddArtisIdToBookings < ActiveRecord::Migration[7.1]
  def change
    remove_column :bookings, :artist_id, :integer
    add_reference :bookings, :artist, null: false, foreign_key: true
  end
end
