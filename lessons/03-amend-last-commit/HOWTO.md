# How to amend the last commit

Fix the mistakes by editing the `style.css`file.

Add the file to the staging area with `git add style.css`

Run `git commit --amend`. 

You will see the old commit message and can edit it.

Check with `git log` after committing. You can see that `--amend` changed
the old commit instead of creating a new one. The commit also has a new
commit id.

It's like travelling in time and fixing mistakes!

## Optional: Amending author names and commit date

You can even change the author name and the commit date retroactively.

Try out the following commands:

```shell
# Commit as a different author
git commit --amend --author="Claire Charming <claire@example.com>" --no-edit

# Make it look like you worked on Christmas
git commit --amend --date="25-12-2010T20:00:00" --no-edit 
```

The `--no-edit` flag will skip the editing of the commit message

