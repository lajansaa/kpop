class RenameUsersToUsersv2 < ActiveRecord::Migration[5.0]
  def change
    rename_table :users, :user_v2s
  end
end
