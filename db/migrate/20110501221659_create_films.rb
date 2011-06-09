class CreateFilms < ActiveRecord::Migration
  def self.up
    create_table :films do |t|
      t.int, :id
      t.string, :title
      t.string, :director
      t.int, :year
      t.int, :category_id
      t.string, :trailer
      t.int, :length
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :films
  end
end
