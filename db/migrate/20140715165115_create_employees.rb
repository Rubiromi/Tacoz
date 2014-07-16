class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :badge_number
      t.integer :location_id
      t.timestamps
    end

    add_index :employees, :location_id
  end
end
