class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.string :year
      t.string :genre
      t.string :film_rating
      t.string :critic_rating
      t.text :description
      t.timestamps
    end
  end
end
