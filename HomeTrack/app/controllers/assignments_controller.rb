class AssignmentsController < ApplicationController
  before_action :authenticate_user!
  before_filter :find_location
  before_filter :find_course
  before_filter :find_assignment, only: [:show, :edit, :update, :destroy, :comment, :new_comment]

  def index
    @assignments = Assignment.all
    @courses = @location.courses.all
    @assignments = Assignment.all
    # @assignments = @course.assignment.all
  end

  def show
    @locations = Location.all 
    @courses = Course.all
    @assignments = Assignment.all
    # @assignments = @course.assignment.all
  end

  def new
    @assignment = Assignment.new
  end

  def create
    @assignment = @course.assignments.create assignment_params
    success = @assignment.save
    if success == true
      flash[:notice] = "Assignment was successfully created!"
      redirect_to location_course_assignment_path(@location, @course, @assignment)
    else
      flash[:error] = "Error detected. Please try again."
      render :new
    end
  end

  def edit
  end

  def update
    @assignment.update_attributes assignment_params
    success = @assignment.save
    if success == true
      flash[:notice] = "Successfully updated assignment record!"
      redirect_to location_course_assignment_path(@location, @course, @assignment)
    else
      flash[:error] = "Please double check your entries"
      render :edit
    end 
  end

  def destroy
    @assignment.delete
    redirect_to location_course_assignments_path(@location, @course, @assignment)
  end

  def comment
    @comment = @assignment.comments.new
  end

  def add_comment
    @comment = @assignment.comments.create comment_params.merge(user_id: current_user.id)
    redirect_to location_course_assignment_path(@location, @course, @assignment)
  end

private

  def assignment_params
    params.require(:assignment).permit(:name, :description, :course_id, :user_id).merge(user_id: current_user.id)
  end

  def comment_params
    params.require(:comment).permit(:comment)
  end

  def find_assignment
    @assignment = Assignment.find params[:id]
  end

  def find_comment
    @comment = Comment.find params[:comment_id]
    # @comment = @location.course.assignment.comment.find params[:comment_id]
  end

  def find_course
    @course = Course.find params[:course_id]
  end

  def find_location
    @location = Location.find params[:location_id]
  end

  def find_submission
    @submission = Submission.find params[:submission_id]
    # @submission = @location.course.submission.find params[:submission_id]
  end

end
