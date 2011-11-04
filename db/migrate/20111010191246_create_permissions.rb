class CreatePermissions < ActiveRecord::Migration
  def self.up
    create_table :permissions do |t|
      t.int, :id
      t.string, :name
      t.bool, :can_read_all
      t.bool, :can_read_in_self_cinema
      t.bool, :can_write_all
      t.bool, :can_write_in_self_cinema      

      t.timestamps
    end
  end

  def self.down
    drop_table :permissions
  end
end