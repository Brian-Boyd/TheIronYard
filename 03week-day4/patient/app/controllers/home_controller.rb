class HomeController < ApplicationController
  def index
    @patients = Patient.all
    @patients_processing = Patient.where.not(workflow_state: 'leaving')
    @patients_completed = Patient.where(workflow_state: 'leaving')
  end
end
