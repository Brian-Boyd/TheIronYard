class CreateMedications < ActiveRecord::Migration
  def change
    create_table :medications do |t|
      t.integer :patient_id
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
