#!/bin/bash
curl --include --request PATCH "http://localhost:4741/restaurants/${ID}" \
--header "Content-Type: application/json" \
--header "Authorization: Token token=${TOKEN}" \
--data '{
  "restaurant": {
    "restaurant_name": "'"${PLACE}"'",
    "cuisine": "'"${CUISINE}"'"
  }
}'
