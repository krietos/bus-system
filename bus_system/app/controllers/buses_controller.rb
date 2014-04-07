class BusesController < ApplicationController

  def index
    @buses = Bus.all
  end

  def new
    @bus = Bus.new
  end

  def show
    @bus = Bus.find(params[:id])
  end

  def create
    @bus = Bus.new(bus_params)
    if @bus.save
      flash[:notice] = "Bus created."
      redirect_to buses_path
    else
      render 'new'
    end
  end

  def edit
    @bus = Bus.find(params[:id])
  end

  def update
    @bus = Bus.find(params[:id])
    if @bus.update(bus_params)
      flash[:notice] = "Bus updated."
      redirect_to bus_path
    else
      render 'edit'
    end
  end

  def destroy
    @bus = Bus.find(params[:id])
    @bus.destroy
    redirect_to buses_path
  end

  private

  def bus_params
    params.require(:bus).permit(:name, :line_id)
  end

end
