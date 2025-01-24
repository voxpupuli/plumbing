# Plumbing

This module contains utility scripts for voxpupuli admins to
do various management tasks.

## Setting up a gem for rubygems deploys

Add the voxpupuli rubygems account to the owners list of the gem.

```bash
gem owner <gemname> -a pmc@voxpupuli.org
```

## Github Actions secrets

The secrets for the Puppet Forge and Rubygems are set via [organization secrets](https://github.com/organizations/voxpupuli/settings/secrets/actions). This means they only need to be set once.

## gpg

to decrypt:

```bash
./bin/decrypt_credentials.sh
```

to encrypt:

```bash
./bin/encrypt_credentials.sh
```

### keys are missing

if you get this error:

```text
gpg: 0x123ABC...: skipped: unusable public key
gpg: puppet_credentials: sign+encrypt failed: unusable public key
```

you need to import the key:

```bash
gpg --recv-keys 0x123ABC...
```

## Repository topics

### Hacktoberfest

Hacktoberfest wants to have the `hacktoberfest` topic applied to a repository before it counts. To see what's missing:
```bash
./bin/hacktoberfest
```

Then to actually run:
```bash
./bin/hacktoberfest --set-topics
```

### Metadata-based topics

There are labels such as `linux-puppet-module`, `bsd-puppet-module` and `windows-puppet-module` that can be set based on metadata. To see what would be done:
```bash
./bin/github_topics
```

Then to actually run:
```bash
./bin/github_topics --set-topics
```

## syncing labels

In the past we used a nodejs script to sync labels. This feature moved to
[vox-pupuli-tasks](https://github.com/voxpupuli/vox-pupuli-tasks#vox-pupuli-tasks---the-webapp-for-community-management)

The rails app has a [list of labels](https://github.com/voxpupuli/vox-pupuli-tasks/blob/67d27076e025de2d8336d535da91eac8bb5d667f/config/voxpupuli.yml#L42)
and ensures that they are configured on our repositories. Just update the yaml
file to update all labels / their colours or descriptions.

The feature is documented in the [application](https://github.com/voxpupuli/vox-pupuli-tasks#sync-github-labels).

## Contribution

We currently require all commits in this repo to be signed with gpg, so please
configure your git client properly. Let us know if you need some help. We're
also reachable via our IRC channel `#voxpupuli` on freenode.￼
