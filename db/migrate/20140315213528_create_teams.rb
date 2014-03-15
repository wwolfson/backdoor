class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :team_name
      t.integer :team_seed

      t.timestamps
    end
  end
end
