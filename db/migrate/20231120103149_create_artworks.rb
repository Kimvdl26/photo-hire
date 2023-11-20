class CreateArtworks < ActiveRecord::Migration[7.1]
  def change
    create_table :artworks do |t|
      t.references :artist, null: false, foreign_key: true
      t.string :artwork

      t.timestamps
    end
  end
end
