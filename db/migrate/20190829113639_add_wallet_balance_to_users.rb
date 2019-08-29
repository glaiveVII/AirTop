class AddWalletBalanceToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :wallet_balance, :float, :default => 0
  end
end
