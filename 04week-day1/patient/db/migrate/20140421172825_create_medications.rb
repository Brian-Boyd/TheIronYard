class CreateMedications < ActiveRecord::Migration
  def change
    create_table :medications do |t|
      t.references :hopsital, index: true
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
