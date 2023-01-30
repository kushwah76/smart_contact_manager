class RenameOldTableToNewTable < ActiveRecord::Migration[7.0]
  def change
    rename_table :Signups, :user1s
    rename_table :Users  ,:contacts

  end
end
