class AddTestFieldtoSchoolRide < ActiveRecord::Migration[5.1]
  def change
    add_column :school_rides, :test, :string
  end
end
