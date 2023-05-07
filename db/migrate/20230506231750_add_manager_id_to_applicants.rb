class AddManagerIdToApplicants < ActiveRecord::Migration[7.0]
  def change
    add_column :applicants, :manager_id, :integer
  end
end
