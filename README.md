[![Status](https://travis-ci.org/SKDE-Felles/SKDEr.svg?branch=master)](https://travis-ci.org/SKDE-Felles/SKDEr/builds)[![Coverage Status](https://img.shields.io/codecov/c/github/SKDE-Felles/SKDEr/master.svg)](https://codecov.io/github/SKDE-Felles/SKDEr?branch=master)
[![Doc](https://img.shields.io/badge/Doc--grey.svg)](https://skde-felles.github.io/SKDEr/)

# R functions for SKDE

Common R functions used by other R packages at SKDE

## How to contribute

### "Rules"

- All contributions to `master` have to go through a pull request (PR).
- Keep the PR small and concise. Do not mix different features/fixes into one PR.
- Use "squash merging" when merging a PR into `master` to keep the history as linear as possible.
- Make tests. Do not commit untested code.

### Howto

- Get the latest version of `master`, either by cloning or by pulling

```bash
# either clone
git clone git
# or pull
git checkout master # make sure you are on master
git pull --rebase
```

- Create a new branch

```bash
git checkout -b my_fab_new_idea
```

- Do your work and make commits

```bash
git add <filename>
git commit -m 'Clear commit message'
```

- Push your branch to the cloud

```bash
git push -u origin my_fab_new_idea
```

- Make a pull request (PR) on github
- Get someone to review your contribution and, if good, squash merging it into master
