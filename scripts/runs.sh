curl --include --request GET http://localhost:3000/runs \
--header "Content-Type: application/json" \


curl --include --request POST http://localhost:3000/runs \
--header "Content-Type: application/json" \
--data '{
    "run": {
      "user_id": 3,
      "description": "Ran like the wind.",
      "total_miles": 7.0,
      "total_time": "2 hours",
      "completion_date": "2016-06-19"
    }
}'

curl --include --request PATCH http://localhost:3000/workouts \
--header "Content-Type: application/json" \
--data '{
    "run": {
      "user_id": 3,
      "description": "Ran like the wind.",
      "total_miles": 7.0,
      "total_time": "2 hours",
      "completion_date": "2016-06-19"
    }
}'
