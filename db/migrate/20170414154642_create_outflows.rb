class CreateOutflows < ActiveRecord::Migration[5.0]
  def change
    create_table :outflows do |t|
      t.text :description
      t.integer :amoun
      t.date :date

      t.timestamps
    end
  end
end
