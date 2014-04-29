class Hospital < ActiveRecord::Base
  has_many :hospital_patient_joins
  has_many :patients, through: :hospital_patient_joins
  has_many :doctors, as: :curable
end
