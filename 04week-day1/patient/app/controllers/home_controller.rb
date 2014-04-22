class HomeController < ApplicationController
  def index
    @hospitals = Hospital.all
    @patients = Patient.all
    @medications = Medication.all
    @patients_processing = Patient.where.not(workflow_state: 'leaving')
    @patients_completed = Patient.where(workflow_state: 'leaving')
  end
end
