class AddDayToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :day, :string
  end
end
