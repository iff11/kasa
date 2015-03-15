class VisitsController < ApplicationController
  before_action :set_visit, only: [:show, :edit, :update, :destroy]

  def index
    render json: Visit.opened
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
      render json: @visit
    end
  end

  # def new
  #   @visit = Visit.new
  # end

  # def edit
  # end

  # def create
  #   logger.debug('-------------')
  #   logger.debug(params)
  #   params.customer_id = params.fetch(:customer)
  #   @visit = Visit.new(visit_params)

  #   respond_to do |format|
  #     if @visit.save
  #       format.html { redirect_to @visit, notice: 'Visit was successfully created.' }
  #       format.json { render :show, status: :created, location: @visit }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @visit.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # def update
  #   respond_to do |format|
  #     if @visit.update(visit_params)
  #       format.html { redirect_to @visit, notice: 'Visit was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @visit }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @visit.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # def destroy
  #   @visit.destroy
  #   respond_to do |format|
  #     format.html { redirect_to visits_url, notice: 'Visit was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    def set_visit
      @visit = Visit.find(params[:id])
    end

    def visit_params
      params.require(:visit).permit(:note, :customer_id, :employee_id, :completed)
    end
end
