#!/bin/bash

# script to pull all git repos on voxpupuli into one repo so you can run gource on them
# gource  --max-user-speed 500 --seconds-per-day 0.05 --highlight-dirs --file-idle-time 10 -e 0.005 -f --max-files 300 --title 'Vox Pupuli Open Source Commit History' --loop

touch headers
mkdir -p super_repo

git_root="https://github.com/"
repos_url="https://api.github.com/users/voxpupuli/repos "

# the repos endpoint only gives 30 responses
# it sets a 'Link' header with the next page
# keep going until we don't have a 'next' in the Link header
while true
do

    # clone or update every repo
    for repo in $(curl -D headers -s "${repos_url}" | jq '.[] | .full_name' | tr -d \")
    do
        repo_short=$(echo "${repo}" | cut -d "/" -f 2)
        echo "${repo_short}"

        if ! [ -d "${repo_short}" ]; then
            git clone -q "${git_root}/${repo}"
        fi
        cd "${repo_short}" || exit
        git pull -q
        cd .. || exit
        pushd super_repo
        git remote add ${repo_short} ../${repo_short}
        git fetch ${repo_short}
        git subtree add --prefix=${repo_short} ${repo_short} master
        popd

    done



    # if there is no next page then we're done and can exit the loop
    if ! grep '^Link' headers | grep 'next' >/dev/null; then
        break
    else
        next=$(grep '^Link' headers | cut -d ';' -f 1 | tr -d '<>' | cut -d " " -f 2)
    echo Following link: "${next}"
    repos_url="${next}"
    fi
    sleep 1

done

