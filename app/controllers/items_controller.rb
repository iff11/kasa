class ItemsController < ApplicationController
  def index
    render json: Item.includes(:sells, :supplies).all
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

  def update
    item = Item.find(params[:id])
    if item.update(item_params)
      render json: item
    end
  end

  def show
    item = Item.includes(:sells).find(params[:id])
    render json: item
  end

  private
    def item_params
      params.require(:item).permit(:name, :purchase_price, :selling_price, :unlimited, :barcode, :warning_threshold)
    end
end
