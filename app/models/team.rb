# app/models/team.rb
class Team < ActiveRecord::Base
  attr_accessible :name
  attr_accessible :character_ids
  has_many :characters
  has_many :dungeon_teams
  has_many :dungeons, through: :dungeon_teams
end
