#!/bin/bash

API="http://localhost:4741"
URL_PATH="/sign-in"
EMAIL="mail@mail.com"
PASSWORD="test"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'"
    }
  }'

echo
