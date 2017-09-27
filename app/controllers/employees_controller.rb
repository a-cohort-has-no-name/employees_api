class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
    render 'index.json.jbuilder'
  end

  def show
    @employee = Employee.find(params[:id]) #single employee hash
    render 'show.json.jbuilder'
  end

  def create
    @employee = Employee.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      ssn: params[:ssn],
      birthdate: params[:birthdate]
    )
    render 'show.json.jbuilder'
  end

  def update
    @employee = Employee.find(params[:id])
    @employee.update(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      ssn: params[:ssn],
      birthdate: params[:birthdate]
    )
    render 'show.json.jbuilder'
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    @employees = Employee.all
    render 'index.json.jbuilder'
  end

end
