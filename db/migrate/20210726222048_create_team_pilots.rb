class CreateTeamPilots < ActiveRecord::Migration[6.1]
  def change
    create_table :team_pilots do |t|
      t.references :pilot, null: false, foreign_key: true
      t.references :team, null: false, foreign_key: true
      t.references :championship, null: false, foreign_key: true

      t.timestamps
    end
  end
end
