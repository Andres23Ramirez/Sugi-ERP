ActiveAdmin.register Bill do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :number, :amount_cents, :issueDate, :payDate, :state, :establishment_id
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
        row :number
	      row "Monto" do |bill|
	        money_without_cents_and_with_symbol bill.amount
	      end
        row :created_at
	    end
	    active_admin_comments
	end

  index do
    selectable_column
    column :number
    column "Establecimiento" do |bill|
      if bill.establishment.present?
        link_to bill.establishment.name, admin_establishment_path(bill.establishment)
      else
        "No esta asociado a un establecimiento"
      end
    end
    column "Monto" do |bill|
      money_without_cents_and_with_symbol bill.amount
    end
    column :created_at
    actions
  end

  filter :amount_cents
  filter :number
  filter :created_at
end
