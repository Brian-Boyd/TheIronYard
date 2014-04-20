class PatientsController < ApplicationController
  before_filter :find_patient, only: [:show, :edit, :update, :waiting, :doctor, :xray, :surgery, :leaving, :billpay, :release]
  # around_filter :redirect_root, only: [:create, :update, :waiting, :doctor, :xray, :surgery, :leaving, :billpay]

  def show
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.create patient_params
    if @patient.save
      flash[:notice] = "Success! Success!!"
      redirect_to root_path
    else
      flash[:error] = "Error detected. Please try again."
      render :new
    end
  end

  def edit
  end

  def update
    @patient.update_attributes patient_params
    redirect_to root_path
  end

  def waiting
    @patient.go_to_waiting!
    redirect_to root_path
  end

  def doctor
    @patient.go_to_doctor!
    redirect_to root_path
  end

  def xray
    @patient.go_to_xray!
    redirect_to root_path   
  end

  def surgery
    @patient.go_to_surgery!
    redirect_to root_path   
  end

  def billpay
    @patient.go_to_billpay!
    redirect_to root_path   
  end

  def leaving
    @patient.release!
    redirect_to release_patient_path(@patient)
  end

  def release
    # @patient.update_attributes patient_params
    # @patient.save
    #   flash[:notice] = "Your patient has been released from the hospital"
    #   redirect_to root_path
    # else
    #   flash[:error] = "Please enter release notes"
    #   render :leaving
    # end
  end

private
  def patient_params
    params.require(:patient).permit(:name, :description, :release_note)
  end

  def find_patient
    @patient = Patient.find params[:id]
  end

  # def redirect_root
  #   redirect_to root_path 
  # end

end
