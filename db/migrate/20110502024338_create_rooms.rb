class CreateRooms < ActiveRecord::Migration
  def self.up
    create_table :rooms do |t|
      
      t.integer :cinema_id
      t.integer :number
      t.integer :size
      t.integer :roomview_id

      t.timestamps
    end
  end

  def self.down
    drop_table :rooms
  end
end
