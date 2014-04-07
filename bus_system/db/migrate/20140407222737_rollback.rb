class Rollback < ActiveRecord::Migration
  def change
    remove_column :lines, :total_time
    remove_column :buses, :start_time
    add_column :stops, :bus_id, :int
  end
end
