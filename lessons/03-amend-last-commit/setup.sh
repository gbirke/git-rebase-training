#!/bin/sh

git checkout main
./delete-branches.sh

git checkout -b tilted-puppies main
cat lessons/03-amend-last-commit/tilted-puppies/*.patch | git am

git checkout main
