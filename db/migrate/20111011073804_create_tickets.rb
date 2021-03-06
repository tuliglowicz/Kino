class CreateTickets < ActiveRecord::Migration
  def self.up
    create_table :tickets do |t|
      t.integer :seance_id
      t.string  :seat
      t.integer :user_id
      t.boolean :cancelled
      t.integer :reservation_id
      t.boolean :bought
      t.decimal :price
      t.integer :worker_id
      t.integer :ticket_type_id
      t.integer :unregistered_user_id
      t.boolean :belongstounregistereduser
      #t.integer :ticket_number
      
      t.timestamps
    end
  end

  def self.down
    drop_table :tickets
  end
end