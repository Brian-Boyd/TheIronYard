class Hospital < ActiveRecord::Base
  has_many :patients
  has_many :medications
end
