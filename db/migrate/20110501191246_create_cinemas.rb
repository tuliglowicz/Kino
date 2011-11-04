class CreateCinemas < ActiveRecord::Migration
  def self.up
    create_table :cinemas do |t|
      t.int :id
      t.int :city_id
      t.string :name
      t.string :address
      t.int :phone
      

      t.timestamps
    end
  end

  def self.down
    drop_table :cinemas
  end
end
