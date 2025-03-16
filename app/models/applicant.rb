class Applicant < ApplicationRecord
  belongs_to :vacancy
  validates :name, presence: true, length: { minimum: 3 }
  validates :vacancy, presence: true
end