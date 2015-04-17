class SuppliesController < ApplicationController
   def index
    render json: Supply.all
  end

  def create
    supply = Supply.new(supply_params)
    if supply.save
      render json: supply
    end
  end

  def destroy
    supply = Supply.find(params[:id])
    if supply.delete
      render json: supply
    end
  end

  def update
    supply = Supply.find(params[:id])
    if supply.update(supply_params)
      render json: supply
    end
  end

  def show
    supply = Supply.includes(:sells).find(params[:id])
    render json: supply
  end

  private
    def supply_params

      params.require(:supply).permit(:purchase_price, :quantity, :item_id)
    end
end