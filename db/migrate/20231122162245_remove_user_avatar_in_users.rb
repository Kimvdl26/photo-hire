class RemoveUserAvatarInUsers < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :user_avatar, :string
  end
end
