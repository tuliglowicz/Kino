class CreateDiscountSorts < ActiveRecord::Migration
  def self.up
    create_table :discount_sorts do |t|
      t.int :id
      t.string :description
      t.boolean :is_weekend

      t.timestamps
    end
  end

  def self.down
    drop_table :discount_sorts
  end
end
