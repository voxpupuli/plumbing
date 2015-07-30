#!/bin/bash

if [ -z ${1} ]; then
    echo "Usage: $0 <forge password>"
    exit 1
fi

forge_password=$1
travis_args="--skip-version-check --skip-completion-check --no-interactive"

echo '---'
for module in `cat share/modules`
do
    echo -n "${module}: "
    travis encrypt $travis_args -r puppet-community/$module $forge_password
done
