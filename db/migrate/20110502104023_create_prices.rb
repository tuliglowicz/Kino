class CreatePrices < ActiveRecord::Migration
  def self.up
    create_table :prices do |t|
      t.int, :id
      t.float, :price
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :prices
  end
end
