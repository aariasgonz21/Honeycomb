class AppointmentsController < ApplicationController
  before_action :appointment_params, only: :create
  def new
    @appointment = Appointment.new
    @customer = Customer.find_by(id: session[:customer_id])
    @service = Service.find_by(id:params[:service_id])
    @hair_stylist = HairStylist.find_by(id:params[:service_id])

    #makes a week from today
    now = DateTime.now.dup
    arr = []
    hour = 0
    7.times do
      arr << (now.to_time + hour.hours)
      hour += 24
    end

    @datetimes = arr

  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.customer_id = session[:customer_id]
    @appointment.save
    byebug
    redirect_to customer_path(session[:customer_id])
  end

  private

  def appointment_params
    params.require(:appointment).permit(:customer_id, :hair_stylist_id, :service_id, :datetime )
  end

end
