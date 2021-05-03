#!/bin/bash

# Set env var values
filename="foundry.env"
while getopts f:t:u:p:k: flag; do
  case "${flag}" in
  f) filename=${OPTARG} ;;
  t) timezone=${OPTARG} ;;
  u) username=${OPTARG} ;;
  p) password=${OPTARG} ;;
  k) admin_key=${OPTARG} ;;
  *) echo "Invalid flag" ;;
  esac
done

# Validate env var values
if [ -z "$timezone" ]; then
  echo "-t timezone was not given"
  exit 1
fi
if [ -z "$username" ]; then
  echo "-u username was not given"
  exit 1
fi
if [ -z "$password" ]; then
  echo "-p password was not given"
  exit 1
fi
if [ -z "$admin_key" ]; then
  echo "-k admin_key was not given"
  exit 1
fi

# Write env var values to file
touch "$filename"
cat <<EOF >"$filename"
FOUNDRY_ADMIN_KEY=$admin_key
FOUNDRY_PASSWORD=$password
TIMEZONE=$timezone
FOUNDRY_USERNAME=$username
EOF
