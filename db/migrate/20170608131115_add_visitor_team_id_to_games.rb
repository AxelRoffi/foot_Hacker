class AddVisitorTeamIdToGames < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :visitor_team_id, :integer
  end
end
