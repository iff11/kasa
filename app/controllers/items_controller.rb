class ItemsController < ApplicationController
  # before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    render json: Item.all
  end

  def create
    item = Item.new(item_params)
    if item.save
      render json: item
    end
  end

  def destroy
    item = Item.find(params[:id])
    if item.delete
      render json: item
    end
  end

  private
    def item_params
      params.require(:item).permit(:name, :default_price, :stock, :unlimited, :barcode)
    end
end
