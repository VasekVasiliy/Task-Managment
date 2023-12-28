class Project < ApplicationRecord
  has_many :tasks
  validates :name, presence: true
  validates :description, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end