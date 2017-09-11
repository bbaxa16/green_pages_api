class FixColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :strains, :type, :group
  end
end
