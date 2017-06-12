class RemoveForeignKeyFromProfiles < ActiveRecord::Migration[5.1]
  def change
    remove_foreign_key :profiles, :teams
  end
end
