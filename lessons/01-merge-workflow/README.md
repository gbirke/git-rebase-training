# The rebase-and-merge workflow

Ben and Alicia have been working independently on new features for the
site, each one on their own
[branch](https://git-scm.com/book/en/v2/Git-Branching-Branches-in-a-Nutshell).
Now they want to merge their changes back to the `main` branch. They have
specific ideas how their Git history should look like:

- They want to see that they have been using branches.
- They want their changes to show up after each other, 
  so it looks like first one was committed after the other.


## Background information

There are many ways to merge branches back into the `main`. The
requirements call for a specific set of commands. You can call the steps
and commands for branching off and merging back a "workflow" and there are
different workflows that satisfy different team needs and preferences. 

After the two branches have been merged, calling `git log --graph` should show a picture like this (with different commit IDs and messages):

```
*   6542d176 Merge branch 'image-borders' into main
|\  
| * 1e1d9cae Improve image borders
|/  
*   360b6d4 Merge branch 'restructure-layout' into main
|\  
| * a3e0257 Adapt margin and padding
| * 281fbe9 Use flex layout
|/  
* adfbcc5 First commit 
```

The graph looks like succession of small "bumps" (short-lived branches) that follow one after the other, each one ending with a so called "merge commit" that doesn't contain changes but is an indicator that someone merged a branch.

### Benefits of this workflow

- It works well with the GitHub/GitLab UI, as it corresponds to the
	concept of "pull requests"/"merge requests".
- Asynchronous working mode. Developers can work independently from each other and put up code reviews.
- The history shows both individual commits and bigger feature steps related to tickets.
- The main branch is always ready for deployment
- Merge conflicts (when two developers work on the same file in different
	branches) are small and localized.


