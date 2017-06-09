class RemoveMigrationFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :migration, :string
  end
end
