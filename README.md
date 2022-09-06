# Git rebase lessons

This is a repository for learning to use `git rebase` in different
scenarios, using small dev branches. It has setup scripts that create
typical situations that occur when collaborating on a code base.

Our example is a web site for showing pictures of puppies. You work on
this website with your friends, but sometimes you make changes
independently from each other and need to use Git commands to reconcile
the changes.


## Prerequisites

You need to have Git installed and some familiarity with the command line.
Some basic Git knowledge (how to branch, how to commit) is also helpful,
but not required. You might also want to set the editor for commit messages 
(see https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration ).


## How to use the lessons

Each lesson has at least 3 files:

- `README.md` explains the task for the lesson.
- `HOWTO.md` walks you through the lesson step step-by-step
- `setup.sh` sets up the branches of the lesson

To start working on a lesson, run its `setup.sh` from the root of the
repository, e.g. `lessons/02-two-conflicting-branches/setup.sh`.

### Different learning modes

- Tutorial: Set up a lesson, read the `README`, follow the instructions in
	the `HOWTO` and inspect the resulting state in between the steps with
	`git log`.
- Learning tool: Set up a lesson, read the README and try to solve it
	without peeking at the `HOWTO`.
- Pairing exercise: Set up a lesson, read the README with two or more people, try to 
    solve the lesson together, switching the keyboard between people.


## Useful git commands

`git branch` shows you the list of branches. You start each lesson in the
`main` branch. Use `git switch BRANCHNAME` to switch to a branch.

`git log` shows you all the commits of the current branch, ordered by
commit time.

`git log --graph --decorate` shows you all commits of the current branch, where they
branched off and where they merged again. It will also add the branch
names.

`git log --graph --all --decorate` shows you all commits of all branches.
This is useful if you want to see where unmerged branches branched off
the main tree.

`git switch main && git reset --hard origin/main && ./delete-branches.sh`
will reset the repository to its initial state and remove all branches
from lessons you started.


TODO

- Short Lesson descriptions here
- Introductory explanation (merges (with `--no-ff` to simulate pull requests), what are "pull requests" (moderated
	merges)
- Explain how this works ()
