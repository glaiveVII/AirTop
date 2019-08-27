class CreateInvites < ActiveRecord::Migration[5.2]
  def change
    create_table :invites do |t|
      t.references :airdrop, foreign_key: true
      t.references :user, foreign_key: true
      # t.string :status, default: "accepted"
      t.string :status, default: "pending"

      t.timestamps
    end
  end
end
