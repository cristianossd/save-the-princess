class AddTeamIdAndUserIdToCharacters < ActiveRecord::Migration
  def change
  	add_column :characters, :team_id, :integer
  	add_column :characters, :user_id, :integer
  end
end
