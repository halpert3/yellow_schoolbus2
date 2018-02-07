class CreateHomeRides < ActiveRecord::Migration[5.1]
  def change
    create_table :home_rides do |t|
      t.boolean :check_out
      t.integer :kid_id

      t.timestamps
    end
  end
end
