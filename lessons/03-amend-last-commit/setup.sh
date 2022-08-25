#!/bin/sh

# TODO make sure to reset the environment by deleting all local branches and hard-resetting main branch to a known state

git branch -D tilted-puppies
git checkout -b tilted-puppies main
cat lessons/03-amend-last-commit/tilted-puppies/*.patch | git am

git checkout main
