class CreateSchoolRides < ActiveRecord::Migration[5.1]
  def change
    create_table :school_rides do |t|
      t.boolean :check_in
      t.integer :kid_id

      t.timestamps
    end
  end
end
