# Ideas for the future

Things that are out of scope for now, but sound like good ideas

- automated "success" checker (analyses the structure of the commits in
	the `main` branch for each lesson, sees if it looks right)
- Interactive text or web UI that presents the lesson texts and can maybe
	trigger the lesson preparation scripts.
- Refactor setup scripts into a shared script, rely more on convention for
	setting up lessons -> better maintenance of scripts and easier to add
	new lessons
- Use `clean-slate` tag that points to the latest `origin/main` to reset 
  (also add documentation). While this repo is under development, a 
  frequently-changing-tag does not make much sense.

## Documentation snippet for "clean slate" feature

---

Use `git switch main && git reset --hard clean-slate` to reset the rpo to
its initial stat to reset the rpo to its initial state

The commands will remove all commits in
the `main` branch that were not part of the initial state. `clean-slate`
is the name of a [tag](https://git-scm.com/book/en/v2/Git-Basics-Tagging)
in the repository.

### Fetching a new version of this repository

Use the following command to fetch a new version of this repository:

	git fetch origin --tags --force

This will reset the tag `clean-slate` to whatever commit the tag
references on the remote repository. The tag `clean-slate` will always be
the most current version of the `main` branch.

---




