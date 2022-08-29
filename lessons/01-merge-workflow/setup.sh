#!/bin/sh

git checkout main
./delete-branches.sh

git checkout -b petting-puppies main
cat lessons/01-merge-workflow/petting-puppies/*.patch | git am

git checkout -b shiny-title main
cat lessons/01-merge-workflow/shiny-title/*.patch | git am

git checkout main
