class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :public_key, :string
    add_column :users, :admin, :boolean
    add_column :users, :nickname, :string
    add_column :users, :photo, :string
    add_column :users, :age, :integer
    add_column :users, :affiliate_link, :string
    add_column :users, :wallet_balance, :string
  end
end
