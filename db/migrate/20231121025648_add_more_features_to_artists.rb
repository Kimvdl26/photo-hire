class AddMoreFeaturesToArtists < ActiveRecord::Migration[7.1]
  def change
    add_column :artists, :personality, :string
    add_column :artists, :style, :string
    add_column :artists, :location, :string
  end
end
