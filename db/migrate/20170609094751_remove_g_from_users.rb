class RemoveGFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :g, :string
  end
end
