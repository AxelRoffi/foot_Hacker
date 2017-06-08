class AddTeamToUser < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :team
  end
end
