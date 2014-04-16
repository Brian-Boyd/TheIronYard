class CollectionsController < ApplicationController
  def show
    @collection = Collection.find params[:id]
  end

  def new
    @collection = Collection.new
  end

  def create
    @collection = Collection.create collection_params
    redirect_to root_path
  end

  def edit
    @collection = Collection.find params[:id]
  end

  def update
    @collection = Collection.find params[:id]
    @collection.update_attributes collection_params
    redirect_to root_path
  end

  def destroy
    @collection = Collection.find params[:id]
    @collection.delete
    redirect_to root_path
  end

private
  def collection_params
    params.require(:collection).permit(:name)
  end
end
