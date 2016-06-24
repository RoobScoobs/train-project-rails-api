class CreateRuns < ActiveRecord::Migration
  def change
    create_table :runs do |t|
      t.text :description
      t.decimal :total_miles
      t.time :total_time
      t.date :completion_date

      t.timestamps null: false
    end
  end
end
