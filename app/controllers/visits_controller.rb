class VisitsController < ApplicationController
  before_action :set_visit, only: [:show, :edit, :update, :destroy]

  def index
    render json: Visit.includes(:sells).all #, include: ['sells']
  end

  def show
    render json: @visit
  end

  def create
    visit = Visit.new(visit_params)
    if visit.save
      render json: visit
    end
  end

  def update
    if @visit.update(visit_params)
      @visit.customer.fix_last_visit
      render json: @visit
    end
  end

  def destroy
    visit = Visit.find(params[:id])
    if visit.delete
      visit.customer.fix_last_visit
      render json: visit
    end
  end

  def opened
    val = Visit.all.where(completed: false).count
    render json: { 'stat' => {id: 'opened-visit', value: val}}
  end

  private
    def set_visit
      @visit = Visit.find(params[:id])
    end

    def visit_params
      params.require(:visit).permit(:note, :customer_id, :employee_id, :completed, :price_with_tip, :received_amount)
    end
end
