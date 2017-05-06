class AddSalaryToEmployees < ActiveRecord::Migration[5.0]
  def change
  	add_column :employees, :salary_cents, :integer, default: 0
  end
end
