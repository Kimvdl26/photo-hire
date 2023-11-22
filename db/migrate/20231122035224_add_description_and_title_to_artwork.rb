class AddDescriptionAndTitleToArtwork < ActiveRecord::Migration[7.1]
  def change
    add_column :artworks, :description, :string
    add_column :artworks, :title, :string
  end
end
