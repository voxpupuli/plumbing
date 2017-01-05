# Plumbing

This module contains utility scripts for voxpupuli admins to
do various management tasks.



# Travis secrets

To generate the list of encrypted blobs for puppet forge deployment:

```
./bin/puppet_encrypt_for_travis.sh $forge_password > share/travis_secrets
```

To generate the list of encrypted blobs for rubygems deployment:

```
./bin/rubygems_encrypt_for_travis.sh $rubygems_api_key > share/rubygems_travis_secrets
```


# Setting up a gem for rubygems deploys

Add the voxpupuli rubygems account to the owners list of the gem.


```
gem owner <gemname> -a krum.spencer+voxpupuli@gmail.com
```


# gpg

to decrypt:


```
./bin/decrypt_credentials.sh
```


to encrypt:


```
./bin/encrypt_credentials.sh
```


# syncing labels

Syncing labels can be done by using github-label-sync. The labels.json file
contains the labels to be synced

To sync a repository:

```
npm install -g github-label-sync
github-label-sync -a <GitHub token> <repository>
```

You can use -d for a dryrun to see what will be added and removed.


# Syntax Validation

We use https://github.com/caarlos0/shell-ci-build as a submodule in travis. This enables shellcheck and validates all \*,sh files. We probably should update it from time to time.
