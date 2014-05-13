class SubmissionsController < ApplicationController
  before_action :authenticate_user!
  before_filter :find_location
  before_filter :find_course
  before_filter :find_assignment
  before_filter :submission, only: [:show, :edit, :update, :destroy, :comment, :new_comment, :reviewing, :incomplete, :complete]

  def index
  end

  def show
  end

  def new
    @submission = Submission.new
  end

  def create
    @submission = Submission.create submission_params.merge(user_id: current_user.id)
    success = @submission.save
    if success == true
      flash[:notice] = "Submission was successfully created!"
      redirect_to location_courses_path(@location, @course)
    else
      flash[:error] = "Error detected. Please try again."
      render :new
    end
  end

  def edit
  end

  def update
    @submission.update_attributes submission_params
    success = @submission.save
    if success == true
      flash[:notice] = "Successfully updated submission record!"
      redirect_to location_course_path(@location, @course)
    else
      flash[:error] = "Please double check your entries"
      render :edit
    end 
  end

  def destroy
    @submission.delete
    redirect_to location_courses_path(@location, @course)
  end

  def comment
    @comment = @submission.comments.new
  end

  def new_comment
    @comment = @submission.comments.create comment_params.merge(user_id: current_user.id)
    redirect_to location_course_assignment_submission_path(@location, @course, @assignment, @submission)
  end

  def reviewing
    @submission.reviewing!
    respond_to do |format|
      format.js
    end
  end

    def incomplete
    @submission.incomplete!
    respond_to do |format|
      format.js
    end
  end

    def complete
    @submission.complete!
    respond_to do |format|
      format.js
    end
  end

private

  def submission_params
    params.require(:submission).permit(:assignment_id, :workflow_state, :title,
      links_attributes: [:id, :links, :submission_id, :_destroy])
  end

  def find_assignment
    @assignment = @location.course.assignment.find params[:assignment_id]
  end

  def find_course
    @course = @location.courses.find params[:course_id]
  end

  def find_location
    @location = Location.find params[:location_id]
  end

  def find_submission
    @submission = @location.course.submission.find params[:id]
  end

end
