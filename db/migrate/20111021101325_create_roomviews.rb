class CreateRoomviews < ActiveRecord::Migration
  def self.up
    create_table :roomviews do |t|
      t.int :id
      t.string :name
      t.xml :view

      t.timestamps
    end
  end

  def self.down
    drop_table :roomviews
  end
end
