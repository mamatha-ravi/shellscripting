#!/bin/bash

LENGTH=$1

# Validate input
if [ -z "$LENGTH" ]; then
  echo "Usage: $0 <password-length>"
  exit 1
fi

if ! [[ "$LENGTH" =~ ^[0-9]+$ ]] || [ "$LENGTH" -lt 4 ]; then
  echo "❌ Password length must be a number >= 4"
  exit 1
fi

# Character sets
UPPER='A-Z'
LOWER='a-z'
DIGITS='0-9'
SPECIAL='!@#$%^&*()_+'

# Generate password
PASSWORD=$(tr -dc "$UPPER$LOWER$DIGITS$SPECIAL" < /dev/urandom | head -c "$LENGTH")

echo "Generated password: $PASSWORD"
