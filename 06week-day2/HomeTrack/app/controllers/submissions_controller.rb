class SubmissionsController < ApplicationController

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

private
  def find_location
    @name = Name.find params[:id]
  end

  def _params
    params.require(:name).permit(:name)
  end

end
