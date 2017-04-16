ActiveAdmin.register Bill do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :number, :amount, :issueDate, :payDate
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
show do
    attributes_table do
      row :number
      row :amount
      row :created_at
    end
    active_admin_comments
  end

  index do
    selectable_column
    column :number
    column "Establishment" do |bill|
      link_to bill.establishment.name, admin_establishment_path(bill.establishment)
    end
    column :amount
    column :created_at
    actions
  end

  filter :amount
  filter :number
  filter :create
end
