class ShowsController < ApplicationController

  def index
    render :json => Show.all
  end

  def create
    show = Show.create( show_params )
    render :json => show, status: :created
  end

  private
  def show_params
    params.require(:show).permit(:title, :series, :description, :image, :programmeId)
  end

end
