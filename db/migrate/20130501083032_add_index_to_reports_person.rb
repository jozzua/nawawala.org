class AddIndexToReportsPerson < ActiveRecord::Migration
  def change
    add_index :reports, :person, unique: true
  end
end
