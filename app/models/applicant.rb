class Applicant < ApplicationRecord

  def self.to_a
    
  end

  def self.to_h
    {
      id: id,
      name: name,
      manager: self.manager
    }
  end
end
