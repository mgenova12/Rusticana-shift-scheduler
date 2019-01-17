class Api::V1::EmployeesController < ApplicationController
  def index
    @employees = Employee.all

    render json: @employees
  end

  def create 
    @employee = Employee.new(employee_params)

    if @employee.save
      render json: @employee, status: :created
    else
      render json: @employee.errors, status: :unprocessable_entity
    end    

  end

  private 

  def employee_params
    params.require(:employee).permit(:name)
  end  

end
