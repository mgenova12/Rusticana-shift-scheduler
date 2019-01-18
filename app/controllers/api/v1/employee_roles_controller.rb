class Api::V1::EmployeeRolesController < ApplicationController
  def index 
    @employee_roles = EmployeeRole.all

    render json: @employee_roles
  end


  def create
    @employee_role = EmployeeRole.new(employee_role_params)

    if @employee_role.save
      render json: @employee_role, status: :created
    else
      render json: @employee_role.errors, status: :unprocessable_entity
    end    

  end

  private

  def employee_role_params
    params.require(:employee_role).permit(:employee_id, :role_id)
  end  

end
