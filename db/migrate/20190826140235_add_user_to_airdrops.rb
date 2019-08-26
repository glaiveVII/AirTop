class AddUserToAirdrops < ActiveRecord::Migration[5.2]
  def change
    add_reference :airdrops, :user, foreign_key: true
  end
end
