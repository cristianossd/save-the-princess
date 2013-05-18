class CreateDungeons < ActiveRecord::Migration
  def change
    create_table :dungeons do |t|
    	t.string :name
    	t.string :kind
    	t.timestamps
    end
  end
end
