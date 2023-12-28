class AddDetailsToProjects < ActiveRecord::Migration[7.1]
  def change
    add_column :projects, :start_date, :date
    add_column :projects, :end_date, :date
  end
end
