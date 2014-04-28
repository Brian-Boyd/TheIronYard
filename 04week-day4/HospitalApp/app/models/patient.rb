class Patient < ActiveRecord::Base
  # belongs_to :hopsital
  has_many :medications
  has_many :hospital_patient_join
  has_many :hospitals, through: :hospital_patient_join
  has_many :doctors, as: :curable
  # belongs_to :curable, polymorphic: true

  validates :name, presence: true
  validates :description, presence: true

  include Workflow
  workflow do
    state :waiting do
      event :go_to_doctor, transitions_to: :doctor
      event :go_to_xray, transitions_to: :xray
      event :go_to_surgery, transitions_to: :surgery
      event :release, transitions_to: :leaving
    end
    state :doctor do
      event :go_to_xray, transitions_to: :xray
      event :go_to_surgery, transitions_to: :surgery
      event :go_to_billpay, transitions_to: :billpay
    end
    state :xray do
      event :go_to_doctor, transitions_to: :doctor
      event :go_to_surgery, transitions_to: :surgery
      event :go_to_billpay, transitions_to: :billpay
    end
    state :surgery do
      event :go_to_doctor, transitions_to: :doctor
      event :go_to_xray, transitions_to: :xray
      event :go_to_billpay, transitions_to: :billpay
    end
    state :billpay do
      event :release, transitions_to: :leaving
    end       
    state :leaving
  end  
end
