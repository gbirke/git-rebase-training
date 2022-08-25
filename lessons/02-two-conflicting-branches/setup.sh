#!/bin/sh

# TODO make sure to reset the environment by deleting all local branches and hard-resetting main branch to a known state

git branch -D petting-puppies
git checkout -b petting-puppies main
cat lessons/02-two-conflicting-branches/petting-puppies/*.patch | git am
git branch -D jumping-puppies
git checkout -b jumping-puppies-puppies main
cat lessons/02-two-conflicting-branches/jumping-puppies/*.patch | git am
git checkout main
