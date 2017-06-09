class RemoveTeamFromProfiles < ActiveRecord::Migration[5.1]
  def change
    remove_column :profiles, :team, :string
  end
end
