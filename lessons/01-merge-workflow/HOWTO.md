# How to rebase before merging

## How to create merge commits

The task requirements call for a "merge commit", which is a commit that has
no changes but acts as a marker in the git commit log. By default, Git
tries to be smart and avoids merge commits if possible. To force a merge
commit whenever you merge (simulating what happens when you merge a pull
request on GitHub), you need to add the parameter `--no-ff` to the `merge`
command.

Let's start with merging the `shiny-title` into the `main` branch:

```shell
git switch main
git merge --no-ff shiny-title
```

Have a look at the commit log with `git log --graph --oneline` to see how
the branch and merge commit have created a "bump" in the graph.


## How to rebase other branches

The branches `shiny-title` and `petting-puppies` branched off the same commit. 
If you merged the `petting-puppies` branch now, you'd get a commit history
where the commits and lines of the two branches would overlap. What we
want instead is a repository state where the `petting-puppies` branches
off the merge commit of `shiny-title`. The command for that is `git rebase`.
It allows you (among other things) to change the starting point of a
branch.

Let's switch to the `petting-puppies` branch and rebase it to the latest
commit on the `main` branch (checking the log before and after):

```shell
git switch petting-puppies
git log --oneline --graph
git rebase main
git log --oneline --graph
```

You can see that the starting point of the branch has moved.

Now we can merge the `petting-puppies` branch into `main`:

```shell
git switch main
git merge --no-ff petting-puppies
```

Have a look at the commit log with `git log --graph --oneline` to see how
the branch looks now.


## Optional: Trying out different merge strategies

The example so far have shown you how to rebase to achieve the desired
shape of the git history. You ran reset the repository by running 
`git switch main && git reset --hard origin/main && ./delete-branches.sh` 
and starting the lesson again.

- Try out what happens and how the commit graph looks when you leave out the `--no-ff` parameter
- Try out what happens and how the commit graph looks when you don't rebase
	between merges. What happens when you combine it with leaving out
	`no-ff`?
- Discuss with other people where you see the benefits of each merge strategy
	for collaborating on code.
