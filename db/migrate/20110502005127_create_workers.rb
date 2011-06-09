class CreateWorkers < ActiveRecord::Migration
  def self.up
    create_table :workers do |t|
      t.int, :id
      t.int, :cinema_id
      t.int, :status_id
      t.string, :login
      t.string, :password
      t.string, :first_name
      t.string, :last_name
      t.int, :phone
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :workers
  end
end
