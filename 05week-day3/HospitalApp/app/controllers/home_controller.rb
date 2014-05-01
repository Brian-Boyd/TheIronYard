class HomeController < ApplicationController
  def index
    @hospitals = Hospital.all
    # @doctors = Doctors.all
    @patients = Patient.all
    @medications = Medication.all
  end
end
