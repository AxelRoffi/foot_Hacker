class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.integer :team_id
      t.string :first_name
      t.string :last_name
      t.string :image

      t.timestamps
    end
  end
end
