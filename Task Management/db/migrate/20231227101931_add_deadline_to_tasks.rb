class AddDeadlineToTasks < ActiveRecord::Migration[7.1]
  def change
    add_column :tasks, :deadline, :date
  end
end
