class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.integer :hospital_id
      t.string :name
      t.text :description
      t.string :workflow_state
      t.text :release_note

      t.timestamps
    end
  end
end
