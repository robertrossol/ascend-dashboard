class RemoveMentorFromApplicants < ActiveRecord::Migration[7.0]
  def change
    remove_column :applicants, :mentor, :string
  end
end
