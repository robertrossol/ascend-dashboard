class Applicant < ApplicationRecord
  belongs_to :manager, foreign_key: 'manager_id'
  belongs_to :mentor, foreign_key: 'mentor_id'
  validates :name, uniqueness: true

  # def self.to_a
    
  # end

  # def self.to_h
  #   {
  #     id: id,
  #     name: name,
  #     manager: self.manager
  #   }
  # end
end
