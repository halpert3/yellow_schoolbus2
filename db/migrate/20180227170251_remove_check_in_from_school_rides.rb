class RemoveCheckInFromSchoolRides < ActiveRecord::Migration[5.1]
  def change
    remove_column :school_rides, :check_in, :boolean
    remove_column :school_rides, :test, :string
  end
end
