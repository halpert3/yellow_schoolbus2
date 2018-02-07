class ChangeFamilyNameinFamilies < ActiveRecord::Migration[5.1]
  def change
    rename_column :families, :family_name, :fname
  end
end
