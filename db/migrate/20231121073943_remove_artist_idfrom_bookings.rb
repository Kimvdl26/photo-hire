class RemoveArtistIdfromBookings < ActiveRecord::Migration[7.1]
  def change
    remove_column :bookings, :artist_id
  end
end
