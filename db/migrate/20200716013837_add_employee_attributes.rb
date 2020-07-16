class AddEmployeeAttributes < ActiveRecord::Migration[6.0]
  def change
    add_column :employees, :email, :string
    add_column :employees, :salary, :integer
    add_column :employees, :birthday, :date
    add_column :employees, :hire_date, :date
    add_column :employees, :department_id, :integer
    add_column :employees, :is_manager, :boolean
    remove_column :employees, :department, :string
  end
end
