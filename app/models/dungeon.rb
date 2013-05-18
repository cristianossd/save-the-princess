# app/models/dungeon.rb
class Dungeon < ActiveRecord::Base
  attr_accessible :name
  attr_accessible :kind
  has_many :dungeon_teams
  has_many :teams, through: :dungeon_teams
end