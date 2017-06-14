class AddApiIdToNumberPlayers < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :api_id, :integer
  end
end
