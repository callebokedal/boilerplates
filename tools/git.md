# git

## Start
http://rogerdudler.github.io/git-guide/

## Handle issues/problems
http://sethrobertson.github.io/GitFixUm/fixup.html


## Configure Git for the first time
git config --global user.name "First Lastname"
git config --global user.email "first.lastname@example.com"

## View config

    git config --list

## Verify remote
    
    git remote -v

## Update remote

    git remote set-url origin https://example.com/mybookmarklet.git

## Proxy

    git config --global http.proxy https://proxy.example.com:443
    git config http.proxy https://proxy.example.com:443

## Unset proxy

    git config --global --unset http.proxy

## Clone repository

    git clone  <repo>

## Diff changes

    git diff --name-only HEAD

    # Diff only in selected directory
    git diff --name-only "<path>"

## Current changes
git status -s

## gitignore
https://github.com/github/gitignore

## Undo misstake
$ git commit -m "Something terribly misguided" # (0: Your Accident)
$ git reset HEAD~                              # (1)
[ edit files as necessary ]                    # (2)
$ git add .                                    # (3)
$ git commit -c ORIG_HEAD                      # (4)

### Tricks

## Search

    git grep <pattern>

    # Search in file/folder
    git grep <pattern> <path>
    git grep <pattern> <path_to_file>

# Common errors

## GH007: Your push would publish a private email address.

For local repo use:

    git config --local user.email "{ID}+{username}@users.noreply.github.com"
    git config --local user.name "{name}"
