class CreateUnregisteredUsers < ActiveRecord::Migration
  def self.up
    create_table :unregistered_users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone

      t.timestamps
    end
  end

  def self.down
    drop_table :unregistered_users
  end
end
