#!/bin/sh

# TODO make sure to reset the environment by deleting all local branches and hard-resetting main branch to a known state

git branch -D petting-puppies
git checkout -b petting-puppies main
cat lessons/01-merge-workflow/petting-puppies/*.patch | git am
git branch -D shiny-title
git checkout -b shiny-title main
cat lessons/01-merge-workflow/shiny-title/*.patch | git am
git checkout main
