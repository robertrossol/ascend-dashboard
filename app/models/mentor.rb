class Mentor < ApplicationRecord
  has_many :applicants, foreign_key: 'manager_id'
end
