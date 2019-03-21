class ChangeTableNameFromUsertoJob < ActiveRecord::Migration[5.2]
  def change
    rename_table :users, :jobs
  end
end
