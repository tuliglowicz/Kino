class CreateSeats < ActiveRecord::Migration
  def self.up
    create_table :seats do |t|
      t.int :id
      t.int :room_id
      t.char :row
      t.int :collumn

      t.timestamps
    end
  end

  def self.down
    drop_table :seats
  end
end
