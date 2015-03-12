class CustomersController < ApplicationController
  # before_action :set_customer, only: [:show, :edit, :update, :destroy]

  def index
    render json: Item.all
  end
end
