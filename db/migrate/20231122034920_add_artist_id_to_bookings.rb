class AddArtistIdToBookings < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :artist_id, :integer
  end
end
