class ChangeStatusTypeInTasks < ActiveRecord::Migration[7.1]
  def change
    change_column :tasks, :status, :integer
  end
end
