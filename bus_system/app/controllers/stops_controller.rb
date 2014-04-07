class StopsController < ApplicationController
  def index
    @stops = Stop.all
  end

  def new
    @stop = Stop.new
  end

  def show
    @stop = Stop.find(params[:id])
  end

  def create
    @stop = Stop.new(stop_params)
    if @stop.save
      flash[:notice] = "Stop created."
      redirect_to stations_path
    else
      render 'new'
    end
  end

  def edit
    @stop = Stop.find(params[:id])
  end

  def update
    @stop = Stop.find(params[:id])
    if @stop.update(stop_params)
      flash[:notice] = "Stop updated."
      redirect_to stop_path
    else
      render 'edit'
    end
  end

  def destroy
    @stop = Stop.find(params[:id])
    @stop.destroy
    redirect_to stops_path
  end

  private

  def stop_params
    params.require(:stop).permit(:station_id, :line_id, :time, :bus_id)
  end

end
