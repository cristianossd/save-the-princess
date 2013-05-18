class CreateDungeonTeams < ActiveRecord::Migration
  def change
    create_table :dungeon_teams do |t|
    	t.references :team
    	t.references :dungeon
    	t.timestamps
    end
  end
end
