class RemoveRailsFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :rails, :string
  end
end
