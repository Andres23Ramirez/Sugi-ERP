class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :cv_file
      t.date :date_hire
      t.string :position

      t.timestamps
    end
  end
end
