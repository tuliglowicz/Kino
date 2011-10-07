# encoding: UTF-8
class CreateTicketsSortsPrices < ActiveRecord::Migration
  def self.up
    create_table :tickets_sorts_prices do |t|
      t.int :id
      t.int :cinema_id
      t.int :seance_type_id
      t.int :ticket_type_id
      t.float :price
      t.int :discount_sort_id
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :tickets_sorts_prices
  end
end
