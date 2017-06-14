class RemoveTeamIdFromRatings < ActiveRecord::Migration[5.1]
  def change
    remove_column :ratings, :team_id, :bigint
  end
end
