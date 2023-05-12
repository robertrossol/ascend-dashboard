class RemoveManagerFromApplicants < ActiveRecord::Migration[7.0]
  def change
    remove_column :applicants, :manager, :string
  end
end
