class AddWalletBalanceLtcToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :wallet_balance_ltc, :string
  end
end
