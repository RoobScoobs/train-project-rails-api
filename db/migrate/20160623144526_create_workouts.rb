class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name_of_workout
      t.text :description
      t.decimal :total_distance
      t.text :completion_time
      t.date :completion_date

      t.timestamps null: false
    end
  end
end
