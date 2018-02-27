class ChangeColumnsInHomeRides < ActiveRecord::Migration[5.1]
  def change
    remove_column :home_rides, :check_out, :boolean
    add_column :home_rides, :check_out_time, :datetime
  end
end
