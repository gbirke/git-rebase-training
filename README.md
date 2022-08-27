# Learning trunk-based development with puppies

This is a repository for learning to deal with typical situations when
collaborating on a code base. Our example is a web site for showing
pictures of puppies. You work on this website with your friends, but
sometimes you make changes independently from each other and need to use
Git commands to reconcile the changes.

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
