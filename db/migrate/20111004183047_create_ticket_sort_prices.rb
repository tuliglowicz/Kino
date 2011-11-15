class CreateTicketSortPrices < ActiveRecord::Migration
  def self.up
    create_table :ticket_sort_prices do |t|
     
      t.integer :cinema_id
      t.integer :seance_type_id
      t.integer :ticket_type_id
      t.decimal :price
      t.integer :discount_sort_id
      
      t.timestamps
    end
  end

  def self.down
    drop_table :ticket_sort_prices
  end
end