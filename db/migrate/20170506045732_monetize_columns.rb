class MonetizeColumns < ActiveRecord::Migration[5.0]
  def change
  	remove_column :bills, :amount
  	remove_column :entries, :amoun
  	remove_column :outflows, :amoun

	add_column :bills, :amount_cents, :integer, default: 0
	add_column :entries, :amount_cents, :integer, default: 0
	add_column :outflows, :price_cents, :integer, default: 0
  end
end
