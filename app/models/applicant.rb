class Applicant < ApplicationRecord
  belongs_to :manager
  belongs_to :mentor
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
