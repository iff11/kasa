class SellsController < ApplicationController
  def index
    render json: Sell.all
  end

  def show
    render json: Sell.find(params[:id])
  end

  def create
    sell = Sell.new(sell_params)
    if sell.save
      render json: sell
    end
  end

  def destroy
    sell = Sell.find(params[:id])
    if sell.delete
      # TODO: This should be in model's before_destroy hook
      Sell.where(item_id: sell.item_id).counter_culture_fix_counts
      render json: sell
    end
  end

  def update
    sell = Sell.find(params[:id])
    if sell.update(sell_params)
      render json: sell
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def sell_params
      params.require(:sell).permit(:sell_id, :visit_id, :item_id, :count, :price)
    end
end
