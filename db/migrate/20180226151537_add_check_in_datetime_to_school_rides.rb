class AddCheckInDatetimeToSchoolRides < ActiveRecord::Migration[5.1]
  def change
    add_column :school_rides, :check_in_time, :datetime
  end
end
