class AddColumn < ActiveRecord::Migration
  def change
    add_column :patients, :release_note, :text
  end
end
