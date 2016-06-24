class CreateRuns < ActiveRecord::Migration
  def change
    create_table :runs do |t|
      t.references :user, index: true, foreign_key: true, null: false
      t.text :description, null: false
      t.decimal :total_miles, null: false
      t.time :total_time, null: false
      t.date :completion_date, null: false

      t.timestamps null: false
    end
  end
end
