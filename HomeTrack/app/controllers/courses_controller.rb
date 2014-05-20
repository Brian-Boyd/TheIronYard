class CoursesController < ApplicationController
  before_action :authenticate_user!
  before_filter :find_location
  before_filter :find_course, only: [:show, :edit, :update, :destroy]

  def index
    @courses = Course.all
    @locations = Location.all
  end

  def show
    @courses = Course.all
    @locations = Location.all
  end

  def new
    @course = @location.courses.new
  end

  def create
    @course = @location.courses.create course_params
    success = @course.save
    if success == true
      flash[:notice] = "Course was successfully created!"
      redirect_to location_path(@location)
    else
      flash[:error] = "Error detected. Please try again."
      render :new
    end
  end

  def edit
    # @locations = Location.all
  end

  def update
    @course.update_attributes course_params
    success = @course.save
    if success == true
      flash[:notice] = "Successfully updated course record!"
      redirect_to location_path(@location)
    else
      flash[:error] = "Please double check your entries"
      render :edit
    end 
  end

  def destroy
    @course.delete
    redirect_to root_path
  end

private

  def course_params
    params.require(:course).permit(:name)
  end

  def find_course
    @course = Course.find params[:id]
  end

  def find_location
    @location = Location.find params[:location_id]
  end

end
