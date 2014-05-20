class LocationsController < ApplicationController
  # layout "location"
  before_action :authenticate_user!
  before_filter :find_location, only: [:show, :edit, :update, :destroy]

  def index
    @locations = Location.all
  end

  def show
    @locations = Location.all
    @courses = @location.courses
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.create location_params
    success = @location.save
    if success == true
      flash[:notice] = "Location was successfully created!"
      redirect_to location_path(@location)
    else
      flash[:error] = "Error detected. Please try again."
      render :new
    end
  end

  def edit
  end

  def update
    @location.update_attributes location_params
    success = @location.save
    if success == true
      flash[:notice] = "Successfully updated location record!"
      redirect_to location_path
    else
      flash[:error] = "Please double check your entries"
      render :edit
    end 
  end

  def destroy
    @location.delete
    redirect_to root_path
  end

private

  def location_params
    params.require(:location).permit(:name)
  end

  def find_location
    @location = Location.find params[:id]
  end

end
