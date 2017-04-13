class CreateContracEstablishments < ActiveRecord::Migration[5.0]
  def change
    create_table :contrac_establishments do |t|
      t.text :description
      t.string :wayToPay
      t.text :porpuse
      t.string :file
      t.date :startDate
      t.date :endDate

      t.timestamps
    end
  end
end
