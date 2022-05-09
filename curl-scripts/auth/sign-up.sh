#!/bin/bash

API="http://localhost:4741"
URL_PATH="/sign-up"
EMAIL="mail@mail.com"
FN='hi'
LN='hello'
PHONE='888-888-8888'
PASSWORD='test'

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "first_name": "'"${FN}"'",
      "last_name": "'"${LN}"'",
      "phone": "'"${PHONE}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'"
    }
  }'

echo
