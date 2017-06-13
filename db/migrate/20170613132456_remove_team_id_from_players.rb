class RemoveTeamIdFromPlayers < ActiveRecord::Migration[5.1]
  def change
    remove_column :players, :team_id, :integer
  end
end
