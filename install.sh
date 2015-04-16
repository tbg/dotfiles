#!/bin/bash
cd -P $(dirname $0)
git submodule update --init --recursive
git clean -f
find .[a-z]* -maxdepth 0 -print -type d -a -path .git -prune -o -ok rm -rf "${HOME}/{}" \; -exec cp -rf "{}" "${HOME}/{}" \;
