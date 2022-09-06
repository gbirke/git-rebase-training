# Amend last commit

Oh noes! Ben wanted to increase the cuteness by slightly tilting the
images. But he made an embarrassing typo in his commit message and the
change also does not work (`degree` is not a valid CSS unit it must be
`deg` instead).

You can check the changes and commit of the last commit with

```shell
git log --patch -1
```
