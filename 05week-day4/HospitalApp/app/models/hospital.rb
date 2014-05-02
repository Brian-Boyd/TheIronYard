class Hospital < ActiveRecord::Base
  has_many :hospital_patient_joins
  has_many :patients, through: :hospital_patient_joins
  has_many :doctors, as: :curable

  validates :name, :presence => {:message => 'Name cannot be blank, form not submitted'}
  validates :location, :presence => {:message => 'Location cannot be blank, form not submitted'}

end
