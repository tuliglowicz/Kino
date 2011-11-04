class CreatePrivileges < ActiveRecord::Migration
  def self.up
    create_table :privileges do |t|
     
      t.integer :cities
      t.integer :categories
      t.integer :cinemas
      t.integer :cinema_films
      t.integer :discount_sorts
      t.integer :films
      t.integer :rooms
      t.integer :reservations
      t.integer :seats
      t.integer :seance_types
      t.integer :statuses
      t.integer :seances
      t.integer :tickets
      t.integer :ticket_sort_prices
      t.integer :ticket_types
      t.integer :users
      t.integer :workers
      t.integer :permissions
      
      t.timestamps
    end
  end

  def self.down
    drop_table :privileges
  end
end