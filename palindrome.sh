#!/bin/bash
# Reverse the input
REVERSED=$(echo "$INPUT" | rev)

# Compare
if [ "$INPUT" == "$REVERSED" ]; then
  echo "$INPUT → Palindrome"
else
  echo "$INPUT → Not a Palindrome"
fi