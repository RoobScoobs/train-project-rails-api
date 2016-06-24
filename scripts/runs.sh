curl --include --request GET http://localhost:3000/runs \
--header "Content-Type: application/json" \
--header "Authorization: Token token"="BAhJIiU1MmJmYTg5OTEwNjMzMjdjOTcxNzFkZDY0NTE4ODNjOAY6BkVG--5761dcf98873f330fbc81a6916ad35dc23f6d046" \


curl --include --request POST http://localhost:3000/runs \
--header "Content-Type: application/json" \
--header "Authorization: Token token"="BAhJIiU1MmJmYTg5OTEwNjMzMjdjOTcxNzFkZDY0NTE4ODNjOAY6BkVG--5761dcf98873f330fbc81a6916ad35dc23f6d046" \
--data '{
    "run": {
      "description": "Ran like the wind.",
      "total_miles": 7.0,
      "total_time": "1 hour",
      "completion_date": "2016-06-19"
    }
}'

curl --include --request PATCH http://localhost:3000/runs/1 \
--header "Content-Type: application/json" \
--header "Authorization: Token token"="BAhJIiU1MmJmYTg5OTEwNjMzMjdjOTcxNzFkZDY0NTE4ODNjOAY6BkVG--5761dcf98873f330fbc81a6916ad35dc23f6d046" \
--data '{
    "run": {
      "description": "Slow as fuck.",
      "total_miles": 3.3,
      "total_time": "1 hour",
      "completion_date": "2016-06-20"
    }
}'

curl --include --request DELETE http://localhost:3000/runs/1 \
--header "Content-Type: application/json" \
--header "Authorization: Token token"="BAhJIiU1MmJmYTg5OTEwNjMzMjdjOTcxNzFkZDY0NTE4ODNjOAY6BkVG--5761dcf98873f330fbc81a6916ad35dc23f6d046" \
