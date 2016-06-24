curl --include --request GET http://localhost:3000/workouts \
--header "Content-Type: application/json" \


curl --include --request POST http://localhost:3000/workouts \
--header "Content-Type: application/json" \
--data '{
    "workout": {
      "user_id": 3,
      "name_of_workout": "Endurance",
      "description": "Ran like the wind.",
      "total_distance": 7.0,
      "completion_time": "2 hours",
      "completion_date": "2016-06-19"
    }
}'

curl --include --request PATCH http://localhost:3000/workouts \
--header "Content-Type: application/json" \
--data '{
    "workout": {
      "user_id": 3,
      "name_of_workout": "Endurance",
      "description": "Ran like the wind.",
      "total_distance": 7.0,
      "completion_time": "2 hours",
      "completion_date": "2016-06-19"
    }
}'
