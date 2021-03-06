class CustomersController < ApplicationController
  before_action :find_customer, only: [:show, :edit, :update, :destroy]
  before_action :customer_params, only: [:create, :update]

  def show
    #byebug
    @hairtype = Hairtype.find(@customer.hairtype_id).name
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.create(customer_params)
    #byebug
    if @customer.valid?
      redirect_to customer_path(@customer)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @customer.update(customer_params)
    redirect_to customer_path(@customer)
  end

  def delete
    @customer.destroy
    redirect_to :root
  end

  private

  def find_customer
    @customer = Customer.find(params[:id])
  end

  def customer_params
    params.require(:customer).permit(:name, :location, :hairtype_id, :email, :password, :password_confirmation)
  end
end
