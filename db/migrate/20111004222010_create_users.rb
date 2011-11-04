class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      
      t.string :login
      t.string :hashed_password
      t.string :email
      t.string :first_name
      t.string :last_name
      t.integer :phone
     
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end