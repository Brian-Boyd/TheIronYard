class HomeController < ApplicationController
  def index
    @hospitals = Hospital.all
    # @doctors = Doctors.all
    @patients = Patient.all
    @medications = Medication.all
    @hospitals = Hospital.order("name").page(params[:page]).per(5)
  end
end
