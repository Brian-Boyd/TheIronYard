class ChangeField < ActiveRecord::Migration
  def change
    rename_column :patients, :workflow, :workflow_state
  end
end
