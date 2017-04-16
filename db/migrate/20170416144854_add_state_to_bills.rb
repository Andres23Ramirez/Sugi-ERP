class AddStateToBills < ActiveRecord::Migration[5.0]
  def change
    add_column :bills, :state, :string
  end
end
