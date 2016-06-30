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

curl --include --request PATCH http://localhost:3000/runs/17 \
--header "Content-Type: application/json" \
--header "Authorization: Token token"="BAhJIiUyMWRlY2YwYWZhNDY5NzlmOGVhOGJjZTY1YTgyZmNhZQY6BkVG--0465f3da6cabc784cf7b19858642f1ea65082c3f" \
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
