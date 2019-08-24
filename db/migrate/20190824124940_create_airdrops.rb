class CreateAirdrops < ActiveRecord::Migration[5.2]
  def change
    create_table :airdrops do |t|
      t.string :title
      t.float :amount
      t.string :crypto
      t.datetime :start_date
      t.datetime :end_date
      t.text :description
      t.string :photo
      t.string :location
      t.string :quote
      t.string :link
      t.boolean :fix
      t.float :min
      t.float :max
      t.integer :winner
      t.boolean :ref_link

      t.timestamps
    end
  end
end
