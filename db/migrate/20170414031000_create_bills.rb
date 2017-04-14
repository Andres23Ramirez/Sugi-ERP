class CreateBills < ActiveRecord::Migration[5.0]
  def change
    create_table :bills do |t|
      t.integer :number
      t.integer :amount
      t.date :issueDate
      t.date :payDate
      t.references :establishment, foreign_key: true

      t.timestamps
    end
  end
end
