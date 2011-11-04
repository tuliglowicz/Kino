class CreateFilms < ActiveRecord::Migration
  def self.up
    create_table :films do |t|
    
      t.string :title
      t.string :director
      t.integer :year
      t.integer :category_id
      t.string :trailer
      t.integer :length
      t.string :description
      t.string :poster
      t.date :date_from

      t.timestamps
    end
  end

  def self.down
    drop_table :films
  end
end