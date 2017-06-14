class CreateAppearances < ActiveRecord::Migration[5.1]
  def change
    create_table :appearances do |t|
      t.string :position
      t.references :player, foreign_key: true
      t.references :team, foreign_key: true
      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end
