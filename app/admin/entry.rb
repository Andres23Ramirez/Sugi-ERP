ActiveAdmin.register Entry do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :description, :amoun, :date, :amount_cents
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
      row "Amount" do |entry|
        money_without_cents_and_with_symbol entry.amount
      end
      row :date
    end
    active_admin_comments
  end

  index do
    selectable_column
    column :description
    column "Amount" do |entry|
      money_without_cents_and_with_symbol entry.amount
    end
    column :date
    actions
  end

  filter :amoun
  filter :date

end
