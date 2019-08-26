class RemoveAirdropFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_reference :users, :airdrop, foreign_key: true
  end
end
