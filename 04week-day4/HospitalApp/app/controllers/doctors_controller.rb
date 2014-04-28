class DoctorsController < ApplicationController
  before_filter :find_hospital, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @doctor = @hospital.doctors.new
  end

  def create
    @doctor = @hospital.doctors.create doctor_params
    success = @doctor.save
    if success == true
      flash[:notice] = "Doctor was successfully created!"
      redirect_to hospital_doctor_path(@hospital, @doctor)
    else
      flash[:error] = "Error detected. Please try again."
      render :new
    end
  end

  def edit
  end

  def update
    @doctor.update_attributes doctor_params
    redirect_to root_path
  end

  def destroy
    @doctor.delete
    redirect_to root_path
  end

private
  def find_hospital
    @hospital = Hospital.find params[:id]
  end

  def doctor_params
    params.require(:doctor).permit(:name)
  end

end
