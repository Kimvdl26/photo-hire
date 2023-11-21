class ModifyUserRole < ActiveRecord::Migration[7.1]
  def change
    # Remove the 'role' column
    remove_column :users, :role

    # Add 'is_artist' column as boolean
    add_column :users, :is_artist, :boolean, default: false
  end
end
