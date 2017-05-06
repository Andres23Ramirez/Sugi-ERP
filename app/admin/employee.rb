ActiveAdmin.register Employee do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :first_name, :last_name, :cv_file, :date_hire, :position, :salary_cents
menu false

show do
    attributes_table do
      row :first_name
      row :last_name
      row :date_hire
      row :position
      row "Salary" do |employee|
        money_without_cents_and_with_symbol employee.salary
      end
    end
    active_admin_comments
  end

  index do
  	selectable_column
  	column :first_name
  	column :last_name
  	column :date_hire
  	column :position
    column "Salary" do |employee|
      money_without_cents_and_with_symbol employee.salary
    end
    actions
  end

  filter :first_name
  filter :last_name
  filter :position
  filter :created_at
end
