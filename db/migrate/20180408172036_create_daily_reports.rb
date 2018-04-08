class CreateDailyReports < ActiveRecord::Migration[5.1]
  def change
    create_table :daily_reports do |t|
      t.references :user, foreign_key: true
      t.integer :ride_count
      t.date :date

      t.timestamps
    end
  end
end
