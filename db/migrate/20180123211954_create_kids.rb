class CreateKids < ActiveRecord::Migration[5.1]
  def change
    create_table :kids do |t|
      t.string :name
      t.datetime :birthdate
      t.string :grade
      t.integer :family_id

      t.timestamps
    end
  end
end
