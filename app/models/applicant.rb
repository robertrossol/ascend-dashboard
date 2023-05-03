class Applicant < ApplicationRecord
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
