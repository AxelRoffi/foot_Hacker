class AddLocalTeamScoreToGames < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :local_team_score, :integer
  end
end
