class ChangeTwoColumnsInFamily < ActiveRecord::Migration[5.1]
  def change
    add_column :families, :family_name, :string
    remove_column :families, :notes, :text
  end
end
