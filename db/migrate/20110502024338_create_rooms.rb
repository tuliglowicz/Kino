class CreateRooms < ActiveRecord::Migration
  def self.up
    create_table :rooms do |t|
      t.int, :id
      t.int, :cinema_id
      t.int, :number
      t.int :size

      t.timestamps
    end
  end

  def self.down
    drop_table :rooms
  end
end
