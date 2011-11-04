class CreatePermissions < ActiveRecord::Migration
  def self.up
    create_table :permissions do |t|
     
      t.string :name
      t.boolean :can_read_all
      t.boolean :can_read_in_self_cinema
      t.boolean :can_write_all
      t.boolean :can_write_in_self_cinema      

      t.timestamps
    end
  end

  def self.down
    drop_table :permissions
  end
end