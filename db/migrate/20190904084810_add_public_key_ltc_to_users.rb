class AddPublicKeyLtcToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :public_key_ltc, :string
  end
end
