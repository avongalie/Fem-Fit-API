#!/bin/bash

API="http://localhost:4741"
URL_PATH="/sign-out"
TOKEN="b5a090888418150cfacb71ca837bef04"

curl "${API}${URL_PATH}/" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo
