class HairStylistsController < ApplicationController

  before_action :find_hair_stylist, only: :show

  def show
  end

  # Don't want the user/customer to edit and delete a hair_stylist
  # If an admin (hair_stylist owner or hair stylist) gets created,
  # they would be able to edit, and delete a hair_stylist

  private

  def find_hair_stylist
    @hair_stylist = HairStylist.find(params[:id])
  end

end
