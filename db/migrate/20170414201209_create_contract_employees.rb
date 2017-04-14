class CreateContractEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :contract_employees do |t|
      t.date :dateStart
      t.date :dateEnd
      t.integer :salary
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
