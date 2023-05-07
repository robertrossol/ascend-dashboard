class AddMentorIdToApplicants < ActiveRecord::Migration[7.0]
  def change
    add_column :applicants, :mentor_id, :integer
  end
end
