class AddJackpotToInvites < ActiveRecord::Migration[5.2]
  def change
    add_column :invites, :jackpot, :float
  end
end
