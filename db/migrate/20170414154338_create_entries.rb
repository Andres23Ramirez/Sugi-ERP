class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.text :description
      t.integer :amoun
      t.date :date

      t.timestamps
    end
  end
end
