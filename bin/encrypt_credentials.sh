#!/bin/sh

set -eu

rm -f puppet_credentials.asc

recipients=$(cut -d' ' -f1 recipients.txt)
# shellcheck disable=SC2086
echo gpg --recv-keys ${recipients}

# shellcheck disable=SC2046
gpg --sign --encrypt --armor $(echo "$recipients" | sed -e 's/^/--recipient /') puppet_credentials
