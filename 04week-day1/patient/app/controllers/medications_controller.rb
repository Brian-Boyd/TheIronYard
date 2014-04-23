class MedicationsController < ApplicationController
  before_filter :find_hospital
  before_filter :find_medication, only: [:show, :edit, :update, :destroy]

  def new
    @medication = @patient.medications.new
    # @medication = @patient.medications.new
    # @medication = @hospital.patient.medications.new
  end

  def create
    @medication = @patient.medications.new medication_params
    # @medication = @hospital.patient.medications.new medication_params
    if @medication.save
      redirect to hospital_path(@hospital)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @medication.update_attributes medication_params
    redirect to root_path
  end

  def destroy
    @medication.delete
    redirect to root_path
  end

private
  def find_hospital
    @hospital = Hospital.find params[:hospital_id]
  end

  def find_medication
    @medication = Medication.find params[:id]
  end

  def medication_params
    params.require(:medication).permit(:name, :description, :hospital_id)
  end

end
