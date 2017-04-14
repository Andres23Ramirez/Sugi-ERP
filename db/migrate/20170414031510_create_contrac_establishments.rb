class CreateContracEstablishments < ActiveRecord::Migration[5.0]
  def change
    create_table :contrac_establishments do |t|
      t.text :description
      t.string :wayToPay
      t.text :porpuse
      t.string :file_name
      t.date :startDate
      t.date :endDate
      t.references :establishment, foreign_key: true

      t.timestamps
    end
  end
end
