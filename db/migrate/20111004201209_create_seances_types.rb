class CreateSeancesTypes < ActiveRecord::Migration
  def self.up
    create_table :seances_types do |t|
      t.int :id
      t.string :type

      t.timestamps
    end
  end

  def self.down
    drop_table :seances_types
  end
end
