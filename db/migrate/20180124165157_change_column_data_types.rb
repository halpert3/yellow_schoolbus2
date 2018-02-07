class ChangeColumnDataTypes < ActiveRecord::Migration[5.1]
  def change
    change_column :families, :parent1_phone, :string
    change_column :families, :parent2_phone, :string
    change_column :kids, :birthdate, :date
  end
end
