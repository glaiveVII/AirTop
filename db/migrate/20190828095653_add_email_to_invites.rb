class AddEmailToInvites < ActiveRecord::Migration[5.2]
  def change
    add_column :invites, :email, :string
  end
end
