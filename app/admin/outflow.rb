ActiveAdmin.register Outflow do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :description, :amoun, :date
menu false
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
	      row :description
	      column "Amount" do |outflow|
	        money_without_cents_and_with_symbol outflow.price
	      end
	      row :date
	    end
	    active_admin_comments
	end

  index do
    selectable_column
    column :description
    column "Amount" do |outflow|
      money_without_cents_and_with_symbol outflow.price
    end
    column :date
    actions
  end

  filter :amoun
  filter :date
end
