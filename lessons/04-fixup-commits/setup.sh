#!/bin/sh

git checkout main
./delete-branches.sh

git checkout -b mobile-improvements main
cat lessons/04-fixup-commits/mobile-improvements/*.patch | git am

git checkout main
