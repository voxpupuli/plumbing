#!/bin/bash

# script to pull all git repos on voxpupuli so we don't have a jenkins incident
# a jenkins incident is when someone accidentally forcepushes nothing to a bunch of
# repos in a github org

# Note that this script uses unauthenticated github api access which has a criminally
# low rate limit. In testing the script I routinely hit the upper limit.

# exmaple cron:
# */30 * * * * ./plumbing/bin/backup.sh
touch headers

git_root="https://github.com/"
repos_url="https://api.github.com/users/voxpupuli/repos "

# the repos endpoint only gives 30 responses
# it sets a 'Link' header with the next page
# keep going until we don't have a 'next' in the Link header
while true
do

    # clone or update every repo
    for repo in $(curl -D headers -s ${repos_url} | jq '.[] | .full_name' | tr -d \")
    do
        repo_short=$(echo ${repo} | cut -d "/" -f 2)
        echo "${repo_short}"

        if ! [ -d "${repo_short}" ]; then
            git clone -q "${git_root}/${repo}"
        fi
        cd "${repo_short}"
        git pull -q
        cd ..

    done

    # if there is no next page then we're done and can exit the loop
    if ! $(cat headers | grep '^Link' | grep 'next' >/dev/null); then
        break
    else
        next=$(cat headers  | grep '^Link' | cut -d ';' -f 1 | tr -d '<>' | cut -d " " -f 2)
    echo Following link: "${next}"
    repos_url="${next}"
    fi
    sleep 1

done

