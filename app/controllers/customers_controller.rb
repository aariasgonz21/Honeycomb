class CustomersController < ApplicationController
  before_action :find_customer, only: [:show, :edit, :update, :destroy]
  before_action :customer_params, only: [:create, :update]

  def show
    #byebug
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
  end

  def edit
  end

  def update
    @customer.update(customer_params)
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
    params.require(:customer).permit(:name, :hairtype, :location)
  end

end
