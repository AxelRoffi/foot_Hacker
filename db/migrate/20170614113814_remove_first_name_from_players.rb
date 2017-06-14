class RemoveFirstNameFromPlayers < ActiveRecord::Migration[5.1]
  def change
    remove_column :players, :first_name, :string
  end
end
