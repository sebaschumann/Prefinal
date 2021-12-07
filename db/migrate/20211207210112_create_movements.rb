class CreateMovements < ActiveRecord::Migration[6.1]
  def change
    create_table :movements do |t|
      t.datetime :movement_date
      t.string :movement_type
      t.string :description
      t.integer :amount
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
