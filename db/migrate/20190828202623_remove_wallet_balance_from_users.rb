class RemoveWalletBalanceFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :wallet_balance, :string
  end
end
