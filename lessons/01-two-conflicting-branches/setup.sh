#!/bin/sh

git branch -D petting-puppies
git checkout -b petting-puppies main
cat lessons/01-two-conflicting-branches/petting-puppies/*.patch | git am
git branch -D jumping-puppies
git checkout -b jumping-puppies-puppies main
cat lessons/01-two-conflicting-branches/jumping-puppies/*.patch | git am
git checkout main
