class EmployeesController < ApplicationController
  def index
    render json: Employee.includes(:visits).all
  end

  def create
    employee = Employee.new(employee_params)
    if employee.save
      render json: employee
    end
  end

  def destroy
    employee = Employee.find(params[:id])
    if employee.delete
      render json: employee
    end
  end

  def update
    employee = Employee.find(params[:id])
    if employee.update(employee_params)
      render json: employee
    end
  end

  def show
    render json: Employee.find(params[:id])
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_params
      params.require(:employee).permit(:first_name, :last_name, :photo_url)
    end
end
