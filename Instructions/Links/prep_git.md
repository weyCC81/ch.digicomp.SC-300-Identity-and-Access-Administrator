
# Syncing a fork branch from the command line

<https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/syncing-a-fork>

```shell
#git remote -v

git fetch upstream

# git checkout main
git checkout master # Your branch is up to date with 'origin/master'.

# git merge upstream/main
git merge upstream/master
# > Automatic merge failed; fix conflicts and then commit the result.
```

<https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/addressing-merge-conflicts/resolving-a-merge-conflict-using-the-command-line>

```shell
git status


```