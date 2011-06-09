class CreateTickets < ActiveRecord::Migration
  def self.up
    create_table :tickets do |t|
      t.int, :id
      t.int, :seance_id
      t.int, :seat_id
      t.int, :price_id
      t.int, :user_id
      t.int, :discount_id
      t.boolean, :bought
      t.boolean :cancelled

      t.timestamps
    end
  end

  def self.down
    drop_table :tickets
  end
end
