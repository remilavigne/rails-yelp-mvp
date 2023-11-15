class FixColumnName < ActiveRecord::Migration[7.1]
  def change
    rename_column :restaurants, :phont_number, :phone_number
  end
end
