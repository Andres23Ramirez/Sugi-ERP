class CreateEstablishments < ActiveRecord::Migration[5.0]
  def change
    create_table :establishments do |t|
      t.integer :number
      t.string :name
      t.integer :numberPhone

      t.timestamps
    end
  end
end
