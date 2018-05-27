#!/bin/bash

#curl --include --request DELETE "http://localhost:4741/restaurants/${ID}"

curl "http://localhost:4741/restaurants/${ID}" \
  --include \
  --request DELETE \
