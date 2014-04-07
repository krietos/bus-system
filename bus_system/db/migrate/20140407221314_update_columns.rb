class UpdateColumns < ActiveRecord::Migration
  def change
    remove_column :stops, :bus_id
    add_column :lines, :total_time, :time
    add_column :buses, :start_time, :time
  end
end
