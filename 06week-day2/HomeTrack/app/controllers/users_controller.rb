class UsersController < ApplicationController
  before_action :authenticate_user!
  before_filter :find_location

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
    @location = Location.find params[:location_id]
  end

end
