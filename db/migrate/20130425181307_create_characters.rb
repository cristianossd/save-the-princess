class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :strength
      t.integer :skill
      t.integer :resistance
      t.integer :armor
      t.integer :fire_power
      t.integer :health_points

      t.timestamps
    end
  end
end
