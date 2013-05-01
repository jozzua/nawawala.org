class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :person
      t.string :details

      t.timestamps
    end
  end
end
