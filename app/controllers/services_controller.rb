class ServicesController < ApplicationController
before_action find_service

  def show
  end

  private

  def find_service
    @service = Service.find(params[:id])
  end
end
