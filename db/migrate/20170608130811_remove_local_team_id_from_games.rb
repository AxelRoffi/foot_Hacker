class RemoveLocalTeamIdFromGames < ActiveRecord::Migration[5.1]
  def change
    remove_column :games, :local_team_id, :string
  end
end
