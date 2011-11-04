class CreateCinemaFilms < ActiveRecord::Migration
  def self.up
    create_table :cinema_films do |t|
      t.int :id
      t.int :cinema_id
      t.int :film_id
      t.date :date_from
      t.date :date_untill

      t.timestamps
    end
  end

  def self.down
    drop_table :cinema_films
  end
end
