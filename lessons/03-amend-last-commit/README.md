# Amend last commit

Oh noes! Ben wanted to increase the cuteness by slightly tilting the
images. But he made an embarrassing typo in his commit message and the
change also does not work (`degree` is not a valid CSS unit it must be
`deg` instead).

Fix the mistakes by editing the `style.css`file, add the file to the
staging area with `git add` and then run `git commit --amend`. You will
see the old commit message and can edit it. Check with `git log` after
committing. You can see that `--amend` changed the old commit instead of
creating a new one. It's like travelling in time and fixing mistakes.
