class Vacancy < ApplicationRecord
  belongs_to :company
  has_many :applicants, dependent: :destroy
  validates :title, presence: true, uniqueness: { scope: :company_id }, length: { minimum: 3 }
  validates :location, presence: true
  validates :description, presence: true, length: { minimum: 10 }
  validates :requirements, presence: true, length: { minimum: 5 }
  validates :salary, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :available, inclusion: { in: [true, false] }
end
