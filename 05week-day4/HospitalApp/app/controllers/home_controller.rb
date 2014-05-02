class HomeController < ApplicationController
  def index
    @hospitals = Hospital.all
    @patients = Patient.all
    @medications = Medication.all
    @hospitals = Hospital.order("id").page(params[:page]).per(5)
  end
end