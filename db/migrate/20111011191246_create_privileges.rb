class CreatePrivileges < ActiveRecord::Migration
  def self.up
    create_table :privileges do |t|
      t.int, :id
      t.int, :cities
      t.int, :categories
      t.int, :cinemas
      t.int, :cinema_films
      t.int, :discount_sorts
      t.int, :films
      t.int, :rooms
      t.int, :reservations
      t.int, :seats
      t.int, :seance_types
      t.int, :statuses
      t.int, :seances
      t.int, :tickets
      t.int, :ticket_sort_prices
      t.int, :ticket_types
      t.int, :users
      t.int, :workers
      t.int, :permissions
      
      t.timestamps
    end
  end

  def self.down
    drop_table :privileges
  end
end