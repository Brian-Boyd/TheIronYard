class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :genre
      t.string :director
      t.string :starring
      t.string :release_year
      t.string :runtime
      t.string :mpaa_rating
      t.string :viewer_rating
      t.string :viewer_count
      t.string :image_url
      t.decimal :price, precision: 8, scale: 2

      t.timestamps
    end
  end
end
