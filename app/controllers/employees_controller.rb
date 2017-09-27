class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id]) #single employee hash
    render 'show.json.jbuilder'
  end

end
