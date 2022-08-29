#!/bin/sh

git checkout main
./delete-branches.sh

git checkout -b petting-puppies main
cat lessons/02-two-conflicting-branches/petting-puppies/*.patch | git am

git checkout -b jumping-puppies main
cat lessons/02-two-conflicting-branches/jumping-puppies/*.patch | git am

git checkout main
