class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.references :user, index: true, foreign_key: true, null: false
      t.string :name_of_workout, null: false
      t.text :description, null: false
      t.decimal :total_distance, null: false
      t.text :completion_time, null: false
      t.date :completion_date, null: false

      t.timestamps null: false
    end
  end
end
