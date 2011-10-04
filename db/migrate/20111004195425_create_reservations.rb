class CreateReservations < ActiveRecord::Migration
  def self.up
    create_table :reservations do |t|
      t.int :id
      t.date :date

      t.timestamps
    end
  end

  def self.down
    drop_table :reservations
  end
end
