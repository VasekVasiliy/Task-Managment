class Task < ApplicationRecord
  belongs_to :project

  enum status: { выполнена: 0, в_процессе: 1, отложена: 2 }

  validates :name, presence: true
  validates :status, inclusion: { in: Task.statuses.keys }
  validates :description, presence: true
  validates :deadline, presence: true

end
