#!/bin/bash

if [ -z "${1}" ]; then
    echo "Usage: $0 <forge password>"
    exit 1
fi

forge_password=$1
travis_args="--skip-version-check --skip-completion-check --no-interactive"

while read -r line;
do
    echo "$line"
    echo -n "secure: "
    travis encrypt "$travis_args" -r "voxpupuli/$line" "$forge_password"
done < share/modules
