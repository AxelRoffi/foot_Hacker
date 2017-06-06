class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :local_team_id
      t.string :visitor_team_id
      t.date :datetime

      t.timestamps
    end
  end
end
