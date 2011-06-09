class CreateSeances < ActiveRecord::Migration
  def self.up
    create_table :seances do |t|
      t.int, :id
      t.int, :cinema_film_id
      t.int, :room_id
      t.date, :date_from
      t.time :time_from

      t.timestamps
    end
  end

  def self.down
    drop_table :seances
  end
end
