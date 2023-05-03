class CreateApplicants < ActiveRecord::Migration[7.0]
  def change
    create_table :applicants do |t|
      t.string :name, null: false, unique: true
      t.string :manager
      t.string :mentor
      t.string :unit
      t.datetime :alert_date
      t.integer :employee_id
      t.string :promotion_month

      t.timestamps
    end
    add_index :applicants, :name, unique: true
  end
end
