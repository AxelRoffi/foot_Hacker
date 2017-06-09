class AddUserToProfile < ActiveRecord::Migration[5.1]
  def change
    add_reference :profiles, :user
  end
end
