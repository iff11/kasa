class CustomersController < ApplicationController
  # before_action :set_customer, only: [:show, :edit, :update, :destroy]

  def index
    render json: Customer.all
  end

  def show
    render json: Customer.find(params[:id])
  end

  def create
    customer = Customer.new(customer_params)
    if customer.save
      render json: customer
    end
  end

  def destroy
    customer = Customer.find(params[:id])
    if customer.delete
      render json: customer
    end
  end

  def update
    customer = Customer.find(params[:id])
    if customer.update(customer_params)
      render json: customer
    end
  end

  private
    def customer_params
      params.require(:customer).permit(:first_name, :last_name, :birth, :phone, :mail, :note)
    end
end
