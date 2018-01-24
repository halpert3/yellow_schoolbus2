class CreateFamilies < ActiveRecord::Migration[5.1]
  def change
    create_table :families do |t|
      t.string :parent1_name
      t.integer :parent1_phone
      t.string :parent2_name
      t.integer :parent2_phone
      t.text :notes

      t.timestamps
    end
  end
end
