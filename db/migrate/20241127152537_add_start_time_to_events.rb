class AddStartTimeToEvents < ActiveRecord::Migration[7.1]
  def change
    add_column :events, :start_time, :time
  end
end
