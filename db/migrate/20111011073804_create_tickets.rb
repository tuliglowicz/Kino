class CreateTickets < ActiveRecord::Migration
  def self.up
    create_table :tickets do |t|
      t.int :id
      t.int :seance_id
      t.int :seat_id
      t.int :user_id
      t.boolean :cancelled
      t.int :reservation_id
      t.bigdecimal :price
      t.int :worker_id
      t.int :ticket_type_id
      
      t.timestamps
    end
  end

  def self.down
    drop_table :tickets
  end
end