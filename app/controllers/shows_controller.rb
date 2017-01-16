class ShowsController < ApplicationController

  def index
    render :json => "test"
  end

  def create
    @show = Show.create( show_params )
    render :json => @show
  end

  def show_params
    params.require(:show).permit(:title, :series, :description, :image, :programmeId)
  end

end
