class RemoveVisitorTeamIdFromGames < ActiveRecord::Migration[5.1]
  def change
    remove_column :games, :visitor_team_id, :string
  end
end


