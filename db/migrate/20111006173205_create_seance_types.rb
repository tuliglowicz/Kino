class CreateSeanceTypes < ActiveRecord::Migration
  def self.up
    create_table :seance_types do |t|
     
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :seance_types
  end
end
