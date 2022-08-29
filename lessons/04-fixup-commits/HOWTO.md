# How to fix old commits

Use `git blame <FILENAME>` to see which commit introduced the lines you
want to change. Ignore the committer name, just copy the hexadecimal
commit id.

Edit the file that has an error and correct it (e.g deleting or changing
the lines of code that are wrong). Commit the changed file, but add the
`--fixup` parameter and the commit ID you copied like this:

	git commit --fixup <COMMIT_ID>

If you now use `git log` to see that there is a new commit with the
`fixup! ` prefix. Not helpful yet, but the following command will do its
magic:

	git rebase --interactive --autosquash <COMMIT_ID>^

Note the circumflex after the commit id - it tells Git to include the
commit ID. The command will show you an editor with commit IDs and commit
messages. You can see that the order is now different from what `git log`
showed and that all lines except the fixup commit have a `pick` prefix. We
will use this editor view again more extensively in later lessons. For
now, save the file in the editor and quit the editor.

If you now use `git log` you will see that the fixup commit is gone. Git
has *squashed* it into the original commit. You have rewritten history.
