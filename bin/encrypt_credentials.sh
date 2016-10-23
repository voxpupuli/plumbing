#!/bin/bash

set -e

rm -f puppet_credentials.asc

while read -r recp; do
  echo "--recipient ${recp}"
  recipients="${recipients} --recipient ${recp}"
  gpg --recv-keys "${recp}"
done < recipients.txt

set -x
gpg --sign --encrypt --armor ${recipients} puppet_credentials

