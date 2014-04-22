class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :medications, :hopsital_id, :hospital_id
  end
end
