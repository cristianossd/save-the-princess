# app/models/dungeon_team.rb
class DungeonTeam < ActiveRecord::Base
	belongs_to :dungeon
	belongs_to :team
end
