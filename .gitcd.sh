#!/bin/bash

function gitcd () {
  if [ -z "$1" ]; then
    return 1
  fi
  NEWDIR=$(find ~ -path "*/$1/.git" -a -type d -exec echo "{}/.." \; 2>/dev/null | head -n 1)
  if [ -z "${NEWDIR}" ]; then
    return 1
  fi
  cd -P "${NEWDIR}"
  echo "$(pwd -P)"
}
