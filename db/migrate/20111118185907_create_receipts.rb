class CreateReceipts < ActiveRecord::Migration
  def self.up
    create_table :receipts do |t|
      t.integer :reservation_id
      t.decimal :sum
      t.integer :worker_id
      t.date :date
      t.integer :cash_register
      t.decimal :cash

      t.timestamps
    end
  end

  def self.down
    drop_table :receipts
  end
end
