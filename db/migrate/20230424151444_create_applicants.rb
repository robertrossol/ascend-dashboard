class CreateApplicants < ActiveRecord::Migration[7.0]
  def change
    create_table :applicants do |t|
      t.string :name
      t.string :manager
      t.string :mentor
      t.string :unit
      t.datetime :alert_date
      t.integer :employee_id
      t.string :promotion_month

      t.timestamps
    end
  end
end
