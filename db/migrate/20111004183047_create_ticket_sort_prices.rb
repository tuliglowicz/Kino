class CreateTicketSortPrices < ActiveRecord::Migration
  def self.up
    create_table :tickets_sorts_prices do |t|
     
      t.integer :cinema_id
      t.integer :seance_type_id
      t.integer :ticket_type_id
      t.decimal :price
      t.integer :discount_sort_id
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :tickets_sorts_prices
  end
end