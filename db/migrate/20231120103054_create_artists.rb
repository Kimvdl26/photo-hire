class CreateArtists < ActiveRecord::Migration[7.1]
  def change
    create_table :artists do |t|
      t.string :artist_avatar
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
