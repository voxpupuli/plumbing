#!/bin/bash

set -eu

rm -f puppet_credentials.asc

recipients=''

while read -r recp; do
  recipient=$(echo "${recp}" | cut -d' ' -f1)
  echo "--recipient ${recp}"
  recipients="${recipients} --recipient ${recipient}"
  gpg --recv-keys "${recipient=}"
done < recipients.txt

# shellcheck disable=SC2086
gpg --sign --encrypt --armor ${recipients} puppet_credentials
