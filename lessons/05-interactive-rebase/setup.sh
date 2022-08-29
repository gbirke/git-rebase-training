#!/bin/sh

git checkout main
./delete-branches.sh

git checkout -b colors-and-borders main
cat lessons/05-interactive-rebase/colors-and-borders/*.patch | git am

git checkout main
