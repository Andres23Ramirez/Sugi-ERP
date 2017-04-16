ActiveAdmin.register Establishment do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
	permit_params :number, :name, :numberPhone
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
      row :name
      row :numberPhone
      row :created_at
    end
    active_admin_comments
  end

  index do
    selectable_column
    column :number
    column :name
    column :numberPhone
    column :created_at
    actions
  end

  filter :number
  filter :name
  filter :created_at
end
