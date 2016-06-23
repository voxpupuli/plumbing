# plumbing

This module contains utility scripts for voxpupuli admins to
do various management tasks.



# travis secrets

To generate the list of encrypted blobs for puppet forge deployment:

./bin/encrypt_for_travis.sh $forge_password > share/travis_secrets


# gpg

to decrypt:


```
bin/decrypt_credentials.sh
```


to encrypt:


```
./bin/encrypt_credentials.sh
```


# syncing labels

Syncing labels can be done by using github-label-sync. The labels.json file
contains the labels to be synced

To sync a repository:

npm install -g github-label-sync
github-label-sync -a <GitHub token> <repository>

You can use -d for a dryrun to see what will be added and removed.


# Syntax Validation

We use https://github.com/caarlos0/shell-ci-build as a submodule in travis. This enables shellcheck and validates all \*,sh files. We probably should update it from time to time.
