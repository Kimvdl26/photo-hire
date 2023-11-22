class RemoveArtistAvatrFromArtists < ActiveRecord::Migration[7.1]
  def change
    remove_column :artists, :artist_avatar, :string
  end
end
