#!/bin/bash

#script to pull all git repos on puppet-community so we don't have a jenkins incident
# */15 * * * * ./plumbing/bin/backup.sh

git_root="https://github.com/"
repos_url="https://api.github.com/users/puppet-community/repos "

for repo in `curl -s $repos_url | jq '.[] | .full_name' | tr -d \"`
do
    repo_short=`echo $repo | cut -d "/" -f 2`

    if ! [ -d $repo_short ]; then
        git clone -q $git_root/$repo
    fi
    cd $repo_short
    git pull -q
    cd ..

done
