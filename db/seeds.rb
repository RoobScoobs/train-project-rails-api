# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Workout.create([
  { user_id: 1, name_of_workout: 'Track', description: 'Ran slower than my 5k pace', total_distance: 5.0, completion_time: '2 hours', completion_date: '2016-06-21' },
  { user_id: 2, name_of_workout: 'Recovery', description: 'Took the day off', total_distance: 0, completion_time: '', completion_date: '2016-06-22' },
  { user_id: 3, name_of_workout: 'Hills', description: 'Good day', total_distance: 3.0, completion_time: '1 hour', completion_date: '2016-06-23' }
])
