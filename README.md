# Plumbing

This module contains utility scripts for voxpupuli admins to
do various management tasks.

## Travis secrets

To generate the list of encrypted blobs for puppet forge deployment:

```bash
./bin/puppet_encrypt_for_travis.sh $forge_password > share/travis_secrets
```

To generate the list of encrypted blobs for rubygems deployment:

```bash
./bin/rubygems_encrypt_for_travis.sh $rubygems_api_key > share/rubygems_travis_secrets.yaml
```

## Setting up a gem for rubygems deploys

Add the voxpupuli rubygems account to the owners list of the gem.

```bash
gem owner <gemname> -a krum.spencer+voxpupuli@gmail.com
```

## gpg

to decrypt:

```bash
./bin/decrypt_credentials.sh
```

to encrypt:

```bash
./bin/encrypt_credentials.sh
```

## syncing labels

In the past we used a nodejs script to sync labels. This feature moved to
[vox-pupuli-tasks](https://github.com/voxpupuli/vox-pupuli-tasks#vox-pupuli-tasks---the-webapp-for-community-management)

The rails app has a [list of labels](https://github.com/voxpupuli/vox-pupuli-tasks/blob/67d27076e025de2d8336d535da91eac8bb5d667f/config/voxpupuli.yml#L42)
and ensures that they are configured on our repositories. Just update the yaml
file to update all labels / their colours or descriptions.

The feature is documented in the [application](https://github.com/voxpupuli/vox-pupuli-tasks#sync-github-labels).

## Syntax Validation

We use <https://github.com/caarlos0/shell-ci-build> as a submodule in travis. This enables shellcheck and validates all \*,sh files. We probably should update it from time to time.

## Contribution

We currently require all commits in this repo to be signed with gpg, so please
configure your git client properly. Let us know if you need some help. We're
also reachable via our IRC channel `#voxpupuli` on freenode.￼
