class AppointmentsController < ApplicationController

  def new
    @appointment = Appointment.new
  end

  def create

  end

  private

  def appointment_params
    params.require(:appointment).permit(:customer_id, :hair_stylist_id, :date, :service, )
  end

end
