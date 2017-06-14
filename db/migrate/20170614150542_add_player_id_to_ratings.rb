class AddPlayerIdToRatings < ActiveRecord::Migration[5.1]
  def change
    add_reference :ratings, :player, foreign_key: true
  end
end
