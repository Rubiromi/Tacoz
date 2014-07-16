class LocationsController < ApplicationController
  before_action :find_location, only: [:edit, :update, :destroy]

  def index
    @locations = Location.all
  end

  def show
    @location = Location.find(params[:id])
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      redirect_to admin_locations_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @location.update_attributes(location_params)
      redirect_to admin_location_path
    else
      render :edit
    end
  end

  def destroy
    @location.destroy
    redirect_to admin_locations_path
  end

  private

  def location_params
    params.require(:location).permit(:street_address, :street_address2, :city, :state, :zip, employees_attributes: [:id, :destroy, :name, :badge_number])
  end

  def find_location
    @location = Location.find(params[:id])
  end


end
