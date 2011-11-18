class CreateCompanyData < ActiveRecord::Migration
  def self.up
    create_table :company_data do |t|
      t.string :nip
      t.string :regon
      t.string :name
      t.string :address
      t.integer :vat
      t.string :facebook_path

      t.timestamps
    end
  end

  def self.down
    drop_table :company_data
  end
end
