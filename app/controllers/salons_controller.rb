class SalonsController < ApplicationController
  before_action :find_salon, only: :show
  before_action :salon_params, only: :create

  def index
    @salons = Salon.all
    #byebug
  end

  def show
  end

  def new
    @salon = Salon.new
  end

  def create
    @salon = Salon.new(salon_params)
  end

  # Don't want the user/customer to edit and delete a salon
  # If an admin (salon owner or hair stylist) gets created,
  # they would be able to edit, and delete a salon

  private

  def find_salon
    @salon = Salon.find(params[:id])
  end

  def salon_params
    params.require(:salon).permit(:name, :price, :location, :phone_number)
  end

end
