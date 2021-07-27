class CreateLaps < ActiveRecord::Migration[6.1]
  def change
    create_table :laps do |t|
      t.integer :number
      t.integer :position
      t.integer :time
      t.references :pilot, null: false, foreign_key: true
      t.references :race, null: false, foreign_key: true

      t.timestamps
    end
  end
end
