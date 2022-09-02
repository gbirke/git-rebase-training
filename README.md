# Learning a rebase-and-merge Git workflow

This is a repository for learning a rebase-and-merge Git workflow with
small dev branches. It has setup scripts that create typical situations
that occur when collaborating on a code base.

Our example is a web site for showing pictures of puppies. You work on
this website with your friends, but sometimes you make changes
independently from each other and need to use Git commands to reconcile
the changes.

## The Workflow

The Git workflow for adding new code to a code base works like this:

1. A developer creates a branch off the `main` branch.
2. The developer commits changes to the new branch
3. When the changes are ready, the developer merges the branch back into
   the `main` branch.


## Useful git commands

`git branch` shows you the list of branches. You start each lesson in the
`main` branch. Use `git switch BRANCHNAME` to switch to a branch.

`git log` shows you all the commits of the current branch, ordered by
commit time.

`git log --graph --decorate` shows you all commits of the current branch, where they
branched off and where they merged again.

`git log --graph --all --decorate` shows you all commits of all branches.
This is useful if you want to see where unmerged branches branched off
the main tree.

`git reset --hard clean-slate` will reset the repository to its initial
state. The command will remove all commits (merge commits and commits to a
branch) that were not part of the initial state. `clean-slate` is the name
of a [tag](https://git-scm.com/book/en/v2/Git-Basics-Tagging) in the
repository.

## Fetching a new version of this repository

Use the following command to fetch a new version of this repository:

	git fetch origin --tags --force

This will reset the tag `clean-slate` to whatever commit the tag
references on the remote repository. The tag `clean-slate` will always be
the most current version of the `main` branch.


TODO

- Prerequisites (Git, some command line experience, command line editor).
- Show image / ASCII art of a `main` tree with branches and merged
	branches.
- Introductory explanation (merges (with `--no-ff` to simulate pull requests), what are "pull requests" (moderated
	merges), `git log`, `git branch` for listing branches; we don't teach
	how to commit in this tutorial)
- Explain how to reset
- Explain how to start a lesson
- Explain the different files in a lesson: README describes the task,
	HOWTO describes the steps. Things are
	separated into files to accommodate different learning levels and
	styles: figuring out on your own, following step-by-step, doing the
	exercise in repetitive intervals to help you remember all the parameters and steps.
- Explain how this works
