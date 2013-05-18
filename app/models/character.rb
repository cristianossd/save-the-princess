# app/models/character.rb
require "die.rb"

class Character < ActiveRecord::Base
  attr_accessible :armor, :fire_power, :health_points, :name, :resistance, :skill, :strength
  belongs_to :team
  before_create :calculate_health_points
  after_initialize :default_values
  validates :name, presence: true
  validates :armor, numericality: { less_than_or_equal_to: 5 }, on: :create
  validates :fire_power, numericality: { less_than_or_equal_to: 5 }, on: :create
  validates :resistance, numericality: { less_than_or_equal_to: 5 }, on: :create
  validates :skill, numericality: { less_than_or_equal_to: 5 }, on: :create
  validates :strength, numericality: { less_than_or_equal_to: 5 }, on: :create
  validates :points_spent, numericality: { less_than_or_equal_to: 7 }, on: :create

  # Calculate attack for strength
  def attack
  	Die.roll(times: strength)
  end

  def defend
  	Die.roll(times: armor)
  end

  def calculate_health_points
  	if resistance == 0
  		self.health_points = 1
  	else
  		self.health_points = Die.roll(times: resistance)
  	end
  end

  def default_values
  	self.armor = 0 if armor.nil?
  	self.fire_power = 0 if fire_power.nil?
  	self.resistance = 0 if resistance.nil?
  	self.skill = 0 if skill.nil?
  	self.strength = 0 if strength.nil?
  end

  def points_spent
  	armor.to_i + fire_power.to_i + resistance.to_i + skill.to_i + strength.to_i
  end
end