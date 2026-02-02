#!/bin/bash

ROWS=5

for ((i=1; i<=ROWS; i++)); do
  # Print leading spaces
  for ((j=i; j<ROWS; j++)); do
    echo -n " "
  done

  # Print stars
  for ((k=1; k<=2*i-1; k++)); do
    echo -n "*"
  done

  # New line
  echo
done

# output
#     *
#    ***
#   *****
#  *******
# *********