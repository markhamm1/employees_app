class Api::EmployeesController < ApplicationController
  def index
    @employees = Employee.all
    render 'index.json.jb'
  end

  def show
    @employee = Employee.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @employee = Employee.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      salary: params[:salary],
      birthday: params[:birthday],
      hire_date: params[:hire_date],
      department_id: params[:department_id],
      is_manager: params[:is_manager]
    )
    @employee.save
    render 'show.json.jb'
  end

  def update
    @employee = Employee.find_by(id: params[:id])
    @employee.first_name = params[:first_name] || @employee.first_name
    @employee.last_name = params[:last_name] || @employee.last_name
    @employee.email = params[:email] || @employee.email
    @employee.salary = params[:salary] || @employee.salary
    @employee.birthday = params[:birthday] || @employee.birthday
    @employee.hire_date = params[:hire_date] || @employee.hire_date
    @employee.department_id = params[:department_id] || @employee.department_id
    @employee.is_manager = params[:is_manager] || @employee.is_manager
    @employee.save
    render 'show.json.jb'
  end

  def destroy
    @employee = Employee.find_by(id: params[:id])
    render json: {message: "The employee has been terminated!!!"}
  end
end
