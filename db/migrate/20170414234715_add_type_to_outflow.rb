class AddTypeToOutflow < ActiveRecord::Migration[5.0]
  def change
  	add_column :outflows, :type_service, :string
  end
end
