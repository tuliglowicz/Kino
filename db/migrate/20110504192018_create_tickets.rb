class CreateTickets < ActiveRecord::Migration
  def self.up
    create_table :tickets do |t|
      t.int, :id
      t.int, :seance_id
      t.int, :seat_id
      t.int, :user_id
      t.float, :price
      t.int, :user_id
      t.int, :reservation_id
      t.boolean, :cancelled
      t.int :ticket_sort_price_id

      t.timestamps
    end
  end

  def self.down
    drop_table :tickets
  end
end
