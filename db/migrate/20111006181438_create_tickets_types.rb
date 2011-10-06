class CreateTicketsTypes < ActiveRecord::Migration
  def self.up
    create_table :tickets_types do |t|
      t.int :id
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :tickets_types
  end
end
