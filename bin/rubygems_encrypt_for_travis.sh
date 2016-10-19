#!/bin/bash

if [ -z "${1}" ]; then
    echo "Usage: ${0} <rubygems api key>"
    exit 1
fi

rubygems_api_key=$1
travis_args="--skip-version-check --skip-completion-check --no-interactive"

while read -r module
do
    echo "${module}"
    echo -n "secure: "
    echo travis encrypt "${travis_args}" -r "voxpupuli/${module}" "${rubygems_api_key}"
done < share/modules
