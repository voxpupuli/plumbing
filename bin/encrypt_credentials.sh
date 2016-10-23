#!/bin/bash

set -eu

rm -f puppet_credentials.asc

recipients=''

while read -r recp; do
  echo "--recipient ${recp}"
  recipients="${recipients} --recipient ${recp}"
  gpg --recv-keys "${recp}"
done < recipients.txt

set -x
# shellcheck disable=SC2086
gpg --sign --encrypt --armor ${recipients} puppet_credentials
