#!/bin/bash

curl "http://localhost:4741/restaurants" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "restaurant": {
      "restaurant_name": "'"${PLACE}"'",
      "cuisine": "'"${CUISINE}"'"
    }
  }'

echo
