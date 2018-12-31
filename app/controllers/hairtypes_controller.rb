class HairtypesController < ApplicationController
  def index
    @hairtypes = Hairtype.all
    @hairtype = Hairtype.find(params[:id])
  end
end
