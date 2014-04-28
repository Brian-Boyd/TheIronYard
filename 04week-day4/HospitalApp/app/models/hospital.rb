class Hospital < ActiveRecord::Base
  has_many :hospital_patient_join
  has_many :patients, through: :hospital_patient_join
  has_many :doctors, as: :curable
  # belongs_to :curable, polymorphic: true
end
