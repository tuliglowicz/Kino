class CreateSeances < ActiveRecord::Migration
  def self.up
    create_table :seances do |t|
      
      t.integer :cinema_film_id
      t.integer :room_id
      t.date :date_from
      t.time :time_from
      t.boolean :checked
      t.integer :seance_type_id
      t.integer :discount_sort_id
      t.integer :max_reservable_seats
      
      t.timestamps
    end
  end

  def self.down
    drop_table :seances
  end
end
