# How to resolve a merge conflict

When a file has a conflict, Git will put markers in the file. Between the
markers, you will see both versions of the code. A conflict marker looks
like this:

```
<<<<<<< Name_of_branch_A
/* Here are the changes in branch A */
=======
/* Here are the changes in branch B */
>>>>>>> Name_of_branch_B
```

Without a dedicated merge tool, resolving the conflict means editing the
conflicted file, combining the changes into the code in a way that
preserves the functionality of both branches. The resulting code must
*not* have the conflict markers in them.

## Looking at the individual changes

Use the following commands to switch between branches:

```
git switch petting-puppies
git switch jumping-puppies
git switch main
```

Open the web page `index.html` in a browser to visually/interactively see
the differences.

To see the code changes in the content branches use the command

```shell
git log --patch
```

This will display the code changes along with the commit messages.


The Git commands for this lesson are slightly different, depending on your
git workflow. If you're using the workflow introduced in Lesson 01, see
the section "Merging with the rebase workflow", otherwise see the section 
"Merging with the rebase workflow". You can also read both sections to see
commonalities and differences in the git commands.


## Merging with the rebase workflow

This section uses the rebase-before-merge workflow described in Lesson 01.

Merge the first branch with the commands

```shell
git switch main
git merge --no-ff petting-puppies
```

Now we need to use `git rebase` to make the other branch, `jumping-puppies`, branch off from the newest commit in the `main` branch:

```shell
git switch jumping-puppies
rebase main
```

You'll get a message about the conflict. Now edit the `styles.css` file,
changing the definitions for `.puppy-box` and `.puppy-box:hover` to have
the combined changes from both branches.

If you accidentally deleted too much or the code is not working as
expected, you can abort the rebase with the command

```shell
git rebase --abort
```

That command will throw away all your edits to `style.css` and put your
code back to the state before you ran the `git rebase main` command.

When the page works as expected, you can tell Git that the conflict is
resolve and the rebase can continue:

```shell
git add styles.css
git rebase --continue
```

After the rebase you can inspect the new branch with `git log --graph --oneline` and `git log --patch`.

To merge the rebased branch, run 


```shell
git switch main
git merge jumping-puppies
```

## Merging without the rebase workflow

TODO: Write instructions for plain `git merge` workflow without rebase.


