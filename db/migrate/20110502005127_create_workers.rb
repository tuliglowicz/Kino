class CreateWorkers < ActiveRecord::Migration
  def self.up
    create_table :workers do |t|
     
      t.integer :cinema_id
      t.integer :status_id
      t.string :login
      t.string :hashed_password
      t.string :first_name
      t.string :last_name
      t.integer :phone
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :workers
  end
end