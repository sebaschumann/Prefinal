class CreateSujetos < ActiveRecord::Migration[6.1]
  def change
    create_table :sujetos do |t|
      t.string :first_name
      t.string :last_name
      t.integer :document_number
      t.datetime :birthday

      t.timestamps
    end
  end
end
