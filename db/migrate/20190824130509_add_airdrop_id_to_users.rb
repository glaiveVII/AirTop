class AddAirdropIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :airdrop, foreign_key: {to_table: :airdrops}, index: true
  end
end
