class CreateHospitalsPatientsJoin < ActiveRecord::Migration
  def change
    create_table :hospitals_patients_joins do |t|
      t.integer :hospital_id
      t.integer :patient_id
    end
  end
end
