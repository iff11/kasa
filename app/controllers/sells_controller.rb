class SellsController < ApplicationController
  respond_to :json

  def show
    render json: Sell.where(visit_id: params[:visit_id]).all
  end

  def index
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:sell).permit()
    end
end
