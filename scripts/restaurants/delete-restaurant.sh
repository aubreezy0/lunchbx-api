#!/bin/bash
curl "http://localhost:4741/restaurants/${ID}" \
  --include \
  --request DELETE \
